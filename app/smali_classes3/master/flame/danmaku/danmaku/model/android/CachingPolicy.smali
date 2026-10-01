.class public Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;
.super Ljava/lang/Object;
.source "CachingPolicy.java"


# static fields
.field public static final BMP_BPP_ARGB_4444:I = 0x10

.field public static final BMP_BPP_ARGB_8888:I = 0x20

.field public static final CACHE_PERIOD_AUTO:I = 0x0

.field public static final CACHE_PERIOD_NOT_RECYCLE:I = -0x1

.field public static final POLICY_DEFAULT:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

.field public static final POLICY_GREEDY:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

.field public static final POLICY_LAZY:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;


# instance fields
.field public bitsPerPixelOfCache:I

.field public forceRecyleThreshold:F

.field public maxCachePoolSizeFactorPercentage:F

.field public maxTimesOfReusableFinds:I

.field public maxTimesOfStrictReusableFinds:I

.field public periodOfRecycle:J

.field public reusableOffsetPixel:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 21
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    const/16 v5, 0x32

    const v6, 0x3c23d70a    # 0.01f

    const/16 v1, 0x10

    const v2, 0x3e99999a    # 0.3f

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;-><init>(IFJIF)V

    sput-object v0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->POLICY_LAZY:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    .line 22
    new-instance v1, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    const/16 v6, 0x32

    const v7, 0x3ba3d70a    # 0.005f

    const/16 v2, 0x10

    const/high16 v3, 0x3f000000    # 0.5f

    const-wide/16 v4, -0x1

    invoke-direct/range {v1 .. v7}, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;-><init>(IFJIF)V

    sput-object v1, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->POLICY_GREEDY:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    .line 23
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->POLICY_LAZY:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    sput-object v0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->POLICY_DEFAULT:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    return-void
.end method

.method public constructor <init>(IFJIF)V
    .locals 2
    .param p1, "bitsPerPixelOfCache"    # I
    .param p2, "maxCachePoolSizeFactorPercentage"    # F
    .param p3, "periodOfRecycle"    # J
    .param p5, "reusableOffsetPixel"    # I
    .param p6, "forceRecyleThreshold"    # F

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x10

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->bitsPerPixelOfCache:I

    .line 53
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->maxCachePoolSizeFactorPercentage:F

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->periodOfRecycle:J

    .line 68
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->forceRecyleThreshold:F

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->reusableOffsetPixel:I

    .line 75
    const/16 v0, 0x14

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->maxTimesOfStrictReusableFinds:I

    .line 77
    const/16 v0, 0x96

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->maxTimesOfReusableFinds:I

    .line 27
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->bitsPerPixelOfCache:I

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 32
    const/16 v0, 0x20

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->bitsPerPixelOfCache:I

    .line 34
    :cond_0
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->maxCachePoolSizeFactorPercentage:F

    .line 35
    iput-wide p3, p0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->periodOfRecycle:J

    .line 36
    iput p5, p0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->reusableOffsetPixel:I

    .line 37
    iput p6, p0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->forceRecyleThreshold:F

    .line 38
    return-void
.end method
