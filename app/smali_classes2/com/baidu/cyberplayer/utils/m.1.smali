.class public Lcom/baidu/cyberplayer/utils/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const/4 v0, 0x0

    sput v0, Lcom/baidu/cyberplayer/utils/m;->a:I

    return-void
.end method

.method public static a(I)V
    .locals 1

    .line 21
    if-ltz p0, :cond_0

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    .line 22
    sput p0, Lcom/baidu/cyberplayer/utils/m;->a:I

    .line 24
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 27
    sget v0, Lcom/baidu/cyberplayer/utils/m;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 57
    sget v0, Lcom/baidu/cyberplayer/utils/m;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    sget v0, Lcom/baidu/cyberplayer/utils/m;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 58
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 33
    sget v0, Lcom/baidu/cyberplayer/utils/m;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    sget v0, Lcom/baidu/cyberplayer/utils/m;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 69
    sget v0, Lcom/baidu/cyberplayer/utils/m;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    sget v0, Lcom/baidu/cyberplayer/utils/m;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 70
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 39
    sget v0, Lcom/baidu/cyberplayer/utils/m;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget v0, Lcom/baidu/cyberplayer/utils/m;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 75
    sget v0, Lcom/baidu/cyberplayer/utils/m;->a:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget v0, Lcom/baidu/cyberplayer/utils/m;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 76
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 45
    sget v0, Lcom/baidu/cyberplayer/utils/m;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    sget v0, Lcom/baidu/cyberplayer/utils/m;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 51
    sget v0, Lcom/baidu/cyberplayer/utils/m;->a:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget v0, Lcom/baidu/cyberplayer/utils/m;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method
