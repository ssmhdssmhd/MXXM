.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$TriggerType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TriggerType"
.end annotation


# static fields
.field public static final CROSS:Ljava/lang/String; = "CROSS"

.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyTrigger"

.field public static final NEGATIVE_CROSS:Ljava/lang/String; = "negativeCross"

.field public static final POSITIVE_CROSS:Ljava/lang/String; = "positiveCross"

.field public static final POST_LAYOUT:Ljava/lang/String; = "postLayout"

.field public static final TRIGGER_COLLISION_ID:Ljava/lang/String; = "triggerCollisionId"

.field public static final TRIGGER_COLLISION_VIEW:Ljava/lang/String; = "triggerCollisionView"

.field public static final TRIGGER_ID:Ljava/lang/String; = "triggerID"

.field public static final TRIGGER_RECEIVER:Ljava/lang/String; = "triggerReceiver"

.field public static final TRIGGER_SLACK:Ljava/lang/String; = "triggerSlack"

.field public static final TYPE_CROSS:I = 0x138

.field public static final TYPE_NEGATIVE_CROSS:I = 0x136

.field public static final TYPE_POSITIVE_CROSS:I = 0x135

.field public static final TYPE_POST_LAYOUT:I = 0x130

.field public static final TYPE_TRIGGER_COLLISION_ID:I = 0x133

.field public static final TYPE_TRIGGER_COLLISION_VIEW:I = 0x132

.field public static final TYPE_TRIGGER_ID:I = 0x134

.field public static final TYPE_TRIGGER_RECEIVER:I = 0x137

.field public static final TYPE_TRIGGER_SLACK:I = 0x131

.field public static final TYPE_VIEW_TRANSITION_ON_CROSS:I = 0x12d

.field public static final TYPE_VIEW_TRANSITION_ON_NEGATIVE_CROSS:I = 0x12f

.field public static final TYPE_VIEW_TRANSITION_ON_POSITIVE_CROSS:I = 0x12e

.field public static final VIEW_TRANSITION_ON_CROSS:Ljava/lang/String; = "viewTransitionOnCross"

.field public static final VIEW_TRANSITION_ON_NEGATIVE_CROSS:Ljava/lang/String; = "viewTransitionOnNegativeCross"

.field public static final VIEW_TRANSITION_ON_POSITIVE_CROSS:Ljava/lang/String; = "viewTransitionOnPositiveCross"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 389
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "viewTransitionOnCross"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "viewTransitionOnPositiveCross"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "viewTransitionOnNegativeCross"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "postLayout"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "triggerSlack"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "triggerCollisionView"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "triggerCollisionId"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "triggerID"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "positiveCross"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "negativeCross"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "triggerReceiver"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "CROSS"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$TriggerType;->KEY_WORDS:[Ljava/lang/String;

    return-void
.end method
