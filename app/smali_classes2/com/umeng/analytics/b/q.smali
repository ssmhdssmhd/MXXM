.class public Lcom/umeng/analytics/b/q;
.super Ljava/lang/Object;
.source "TrafficTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "uptr"

.field private static final b:Ljava/lang/String; = "dntr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/d/y;
    .locals 16

    .line 24
    const-string v0, "dntr"

    const-string/jumbo v1, "uptr"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/umeng/analytics/d/y;

    invoke-direct {v3}, Lcom/umeng/analytics/d/y;-><init>()V

    .line 26
    invoke-static/range {p0 .. p0}, Lcom/umeng/analytics/b/q;->b(Landroid/content/Context;)[J

    move-result-object v4

    .line 27
    const/4 v5, 0x0

    aget-wide v6, v4, v5

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_5

    const/4 v6, 0x1

    aget-wide v10, v4, v6

    cmp-long v7, v10, v8

    if-gtz v7, :cond_0

    goto :goto_2

    .line 29
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/umeng/analytics/b/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/m;

    move-result-object v7

    .line 31
    const-wide/16 v10, -0x1

    invoke-virtual {v7, v1, v10, v11}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;J)J

    move-result-wide v12

    .line 32
    invoke-virtual {v7, v0, v10, v11}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 33
    invoke-virtual {v7}, Lcom/umeng/analytics/b/m;->a()Lcom/umeng/analytics/b/m$a;

    move-result-object v7

    aget-wide v14, v4, v6

    invoke-virtual {v7, v1, v14, v15}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;J)Lcom/umeng/analytics/b/m$a;

    move-result-object v1

    aget-wide v14, v4, v5

    invoke-virtual {v1, v0, v14, v15}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;J)Lcom/umeng/analytics/b/m$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b/m$a;->b()V

    .line 37
    cmp-long v0, v12, v8

    if-lez v0, :cond_4

    cmp-long v0, v10, v8

    if-gtz v0, :cond_1

    goto :goto_1

    .line 39
    :cond_1
    aget-wide v0, v4, v5

    sub-long/2addr v0, v10

    aput-wide v0, v4, v5

    .line 40
    aget-wide v0, v4, v6

    sub-long/2addr v0, v12

    aput-wide v0, v4, v6

    .line 42
    aget-wide v0, v4, v5

    cmp-long v7, v0, v8

    if-lez v7, :cond_3

    aget-wide v0, v4, v6

    cmp-long v7, v0, v8

    if-gtz v7, :cond_2

    goto :goto_0

    .line 44
    :cond_2
    aget-wide v0, v4, v5

    long-to-int v1, v0

    invoke-virtual {v3, v1}, Lcom/umeng/analytics/d/y;->c(I)Lcom/umeng/analytics/d/y;

    .line 45
    aget-wide v0, v4, v6

    long-to-int v1, v0

    invoke-virtual {v3, v1}, Lcom/umeng/analytics/d/y;->a(I)Lcom/umeng/analytics/d/y;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-object v3

    .line 42
    :cond_3
    :goto_0
    return-object v2

    .line 37
    :cond_4
    :goto_1
    return-object v2

    .line 27
    :cond_5
    :goto_2
    return-object v2

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string v0, "MobclickAgent"

    const-string v1, "sdk less than 2.2 has get no traffic"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-object v2
.end method

.method public static b(Landroid/content/Context;)[J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    const-string v0, "android.net.TrafficStats"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getUidRxBytes"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 57
    new-array v3, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string v5, "getUidTxBytes"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 61
    const/4 v3, -0x1

    const/4 v5, 0x0

    if-ne p0, v3, :cond_0

    return-object v5

    .line 63
    :cond_0
    nop

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p0, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 p0, 0x2

    new-array p0, p0, [J

    aput-wide v2, p0, v4

    aput-wide v5, p0, v1

    .line 67
    return-object p0
.end method
