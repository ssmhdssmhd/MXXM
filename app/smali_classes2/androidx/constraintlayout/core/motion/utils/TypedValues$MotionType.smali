.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MotionType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "Motion"

.field public static final S_ANIMATE_CIRCLEANGLE_TO:Ljava/lang/String; = "AnimateCircleAngleTo"

.field public static final S_ANIMATE_RELATIVE_TO:Ljava/lang/String; = "AnimateRelativeTo"

.field public static final S_DRAW_PATH:Ljava/lang/String; = "DrawPath"

.field public static final S_EASING:Ljava/lang/String; = "TransitionEasing"

.field public static final S_PATHMOTION_ARC:Ljava/lang/String; = "PathMotionArc"

.field public static final S_PATH_ROTATE:Ljava/lang/String; = "PathRotate"

.field public static final S_POLAR_RELATIVETO:Ljava/lang/String; = "PolarRelativeTo"

.field public static final S_QUANTIZE_INTERPOLATOR:Ljava/lang/String; = "QuantizeInterpolator"

.field public static final S_QUANTIZE_INTERPOLATOR_ID:Ljava/lang/String; = "QuantizeInterpolatorID"

.field public static final S_QUANTIZE_INTERPOLATOR_TYPE:Ljava/lang/String; = "QuantizeInterpolatorType"

.field public static final S_QUANTIZE_MOTIONSTEPS:Ljava/lang/String; = "QuantizeMotionSteps"

.field public static final S_QUANTIZE_MOTION_PHASE:Ljava/lang/String; = "QuantizeMotionPhase"

.field public static final S_STAGGER:Ljava/lang/String; = "Stagger"

.field public static final TYPE_ANIMATE_CIRCLEANGLE_TO:I = 0x25e

.field public static final TYPE_ANIMATE_RELATIVE_TO:I = 0x25d

.field public static final TYPE_DRAW_PATH:I = 0x260

.field public static final TYPE_EASING:I = 0x25b

.field public static final TYPE_PATHMOTION_ARC:I = 0x25f

.field public static final TYPE_PATH_ROTATE:I = 0x259

.field public static final TYPE_POLAR_RELATIVETO:I = 0x261

.field public static final TYPE_QUANTIZE_INTERPOLATOR:I = 0x25c

.field public static final TYPE_QUANTIZE_INTERPOLATOR_ID:I = 0x264

.field public static final TYPE_QUANTIZE_INTERPOLATOR_TYPE:I = 0x263

.field public static final TYPE_QUANTIZE_MOTIONSTEPS:I = 0x262

.field public static final TYPE_QUANTIZE_MOTION_PHASE:I = 0x25a

.field public static final TYPE_STAGGER:I = 0x258


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 549
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Stagger"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PathRotate"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "QuantizeMotionPhase"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "TransitionEasing"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "QuantizeInterpolator"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "AnimateRelativeTo"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "AnimateCircleAngleTo"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "PathMotionArc"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "DrawPath"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "PolarRelativeTo"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "QuantizeMotionSteps"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "QuantizeInterpolatorType"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "QuantizeInterpolatorID"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionType;->KEY_WORDS:[Ljava/lang/String;

    return-void
.end method
