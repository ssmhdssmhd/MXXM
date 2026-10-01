.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CycleType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyCycle"

.field public static final S_ALPHA:Ljava/lang/String; = "alpha"

.field public static final S_CURVE_FIT:Ljava/lang/String; = "curveFit"

.field public static final S_CUSTOM_WAVE_SHAPE:Ljava/lang/String; = "customWave"

.field public static final S_EASING:Ljava/lang/String; = "easing"

.field public static final S_ELEVATION:Ljava/lang/String; = "elevation"

.field public static final S_PATH_ROTATE:Ljava/lang/String; = "pathRotate"

.field public static final S_PIVOT_X:Ljava/lang/String; = "pivotX"

.field public static final S_PIVOT_Y:Ljava/lang/String; = "pivotY"

.field public static final S_PROGRESS:Ljava/lang/String; = "progress"

.field public static final S_ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final S_ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final S_ROTATION_Z:Ljava/lang/String; = "rotationZ"

.field public static final S_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final S_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final S_TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final S_TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field public static final S_TRANSLATION_Z:Ljava/lang/String; = "translationZ"

.field public static final S_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final S_WAVE_OFFSET:Ljava/lang/String; = "offset"

.field public static final S_WAVE_PERIOD:Ljava/lang/String; = "period"

.field public static final S_WAVE_PHASE:Ljava/lang/String; = "phase"

.field public static final S_WAVE_SHAPE:Ljava/lang/String; = "waveShape"

.field public static final TYPE_ALPHA:I = 0x193

.field public static final TYPE_CURVE_FIT:I = 0x191

.field public static final TYPE_CUSTOM_WAVE_SHAPE:I = 0x1a6

.field public static final TYPE_EASING:I = 0x1a4

.field public static final TYPE_ELEVATION:I = 0x133

.field public static final TYPE_PATH_ROTATE:I = 0x1a0

.field public static final TYPE_PIVOT_X:I = 0x139

.field public static final TYPE_PIVOT_Y:I = 0x13a

.field public static final TYPE_PROGRESS:I = 0x13b

.field public static final TYPE_ROTATION_X:I = 0x134

.field public static final TYPE_ROTATION_Y:I = 0x135

.field public static final TYPE_ROTATION_Z:I = 0x136

.field public static final TYPE_SCALE_X:I = 0x137

.field public static final TYPE_SCALE_Y:I = 0x138

.field public static final TYPE_TRANSLATION_X:I = 0x130

.field public static final TYPE_TRANSLATION_Y:I = 0x131

.field public static final TYPE_TRANSLATION_Z:I = 0x132

.field public static final TYPE_VISIBILITY:I = 0x192

.field public static final TYPE_WAVE_OFFSET:I = 0x1a8

.field public static final TYPE_WAVE_PERIOD:I = 0x1a7

.field public static final TYPE_WAVE_PHASE:I = 0x1a9

.field public static final TYPE_WAVE_SHAPE:I = 0x1a5


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 271
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "curveFit"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "visibility"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "alpha"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "translationX"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "translationY"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "translationZ"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "elevation"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "rotationX"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "rotationY"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "rotationZ"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "scaleX"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "scaleY"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "pivotX"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "pivotY"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "progress"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "pathRotate"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "easing"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "waveShape"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "customWave"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "period"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "offset"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "phase"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;->KEY_WORDS:[Ljava/lang/String;

    return-void
.end method
