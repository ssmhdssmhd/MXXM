.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSwipe"
.end annotation


# static fields
.field public static final AUTOCOMPLETE_MODE:Ljava/lang/String; = "autocompletemode"

.field public static final AUTOCOMPLETE_MODE_ENUM:[Ljava/lang/String;

.field public static final DRAG_DIRECTION:Ljava/lang/String; = "dragdirection"

.field public static final DRAG_SCALE:Ljava/lang/String; = "dragscale"

.field public static final DRAG_THRESHOLD:Ljava/lang/String; = "dragthreshold"

.field public static final LIMIT_BOUNDS_TO:Ljava/lang/String; = "limitboundsto"

.field public static final MAX_ACCELERATION:Ljava/lang/String; = "maxacceleration"

.field public static final MAX_VELOCITY:Ljava/lang/String; = "maxvelocity"

.field public static final MOVE_WHEN_SCROLLAT_TOP:Ljava/lang/String; = "movewhenscrollattop"

.field public static final NESTED_SCROLL_FLAGS:Ljava/lang/String; = "nestedscrollflags"

.field public static final NESTED_SCROLL_FLAGS_ENUM:[Ljava/lang/String;

.field public static final ON_TOUCH_UP:Ljava/lang/String; = "ontouchup"

.field public static final ON_TOUCH_UP_ENUM:[Ljava/lang/String;

.field public static final ROTATION_CENTER_ID:Ljava/lang/String; = "rotationcenterid"

.field public static final SPRINGS_TOP_THRESHOLD:Ljava/lang/String; = "springstopthreshold"

.field public static final SPRING_BOUNDARY:Ljava/lang/String; = "springboundary"

.field public static final SPRING_BOUNDARY_ENUM:[Ljava/lang/String;

.field public static final SPRING_DAMPING:Ljava/lang/String; = "springdamping"

.field public static final SPRING_MASS:Ljava/lang/String; = "springmass"

.field public static final SPRING_STIFFNESS:Ljava/lang/String; = "springstiffness"

.field public static final TOUCH_ANCHOR_ID:Ljava/lang/String; = "touchanchorid"

.field public static final TOUCH_ANCHOR_SIDE:Ljava/lang/String; = "touchanchorside"

.field public static final TOUCH_REGION_ID:Ljava/lang/String; = "touchregionid"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 812
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "autoComplete"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "autoCompleteToStart"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "autoCompleteToEnd"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    const-string/jumbo v5, "stop"

    aput-object v5, v0, v4

    const/4 v5, 0x4

    const-string v6, "decelerate"

    aput-object v6, v0, v5

    const-string v6, "decelerateAndComplete"

    const/4 v7, 0x5

    aput-object v6, v0, v7

    const-string v6, "neverCompleteToStart"

    const/4 v7, 0x6

    aput-object v6, v0, v7

    const-string v6, "neverCompleteToEnd"

    const/4 v7, 0x7

    aput-object v6, v0, v7

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->ON_TOUCH_UP_ENUM:[Ljava/lang/String;

    .line 823
    new-array v0, v5, [Ljava/lang/String;

    const-string v6, "overshoot"

    aput-object v6, v0, v1

    const-string v6, "bounceStart"

    aput-object v6, v0, v2

    const-string v6, "bounceEnd"

    aput-object v6, v0, v3

    const-string v6, "bounceBoth"

    aput-object v6, v0, v4

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->SPRING_BOUNDARY_ENUM:[Ljava/lang/String;

    .line 829
    new-array v0, v3, [Ljava/lang/String;

    const-string v6, "continuousVelocity"

    aput-object v6, v0, v1

    const-string/jumbo v6, "spring"

    aput-object v6, v0, v2

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->AUTOCOMPLETE_MODE_ENUM:[Ljava/lang/String;

    .line 834
    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "none"

    aput-object v5, v0, v1

    const-string v1, "disablePostScroll"

    aput-object v1, v0, v2

    const-string v1, "disableScroll"

    aput-object v1, v0, v3

    const-string/jumbo v1, "supportScrollUp"

    aput-object v1, v0, v4

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$OnSwipe;->NESTED_SCROLL_FLAGS_ENUM:[Ljava/lang/String;

    return-void
.end method
