.class public Lmaster/flame/danmaku/danmaku/model/AlphaValue;
.super Ljava/lang/Object;
.source "AlphaValue.java"


# static fields
.field public static MAX:I

.field public static TRANSPARENT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    const/16 v0, 0xff

    sput v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    .line 8
    const/4 v0, 0x0

    sput v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->TRANSPARENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
