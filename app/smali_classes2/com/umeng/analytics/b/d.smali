.class public Lcom/umeng/analytics/b/d;
.super Ljava/lang/Object;
.source "EventTracker.java"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/umeng/analytics/b/b;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x80

    iput v0, p0, Lcom/umeng/analytics/b/d;->a:I

    .line 23
    const/16 v0, 0x100

    iput v0, p0, Lcom/umeng/analytics/b/d;->b:I

    .line 29
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b/d;->d:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/umeng/analytics/b/b;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/b/d;->c:Lcom/umeng/analytics/b/b;

    .line 33
    iget-object p1, p0, Lcom/umeng/analytics/b/d;->c:Lcom/umeng/analytics/b/b;

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ENABLE_MEMORY_BUFFER:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/b/b;->a(Z)V

    .line 34
    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Context is null, can\'t track event"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    .line 116
    if-lez p1, :cond_0

    const/16 v0, 0x80

    if-gt p1, v0, :cond_0

    .line 117
    const/4 p1, 0x1

    return p1

    .line 121
    :cond_0
    const-string p1, "MobclickAgent"

    const-string v0, "Event id is empty or too long in tracking Event"

    invoke-static {p1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/umeng/analytics/b/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    return v0

    .line 147
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/umeng/analytics/b/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 148
    return v0

    .line 150
    :cond_2
    goto :goto_0

    .line 152
    :cond_3
    const/4 p1, 0x1

    return p1

    .line 138
    :cond_4
    :goto_1
    const-string p1, "MobclickAgent"

    const-string v1, "map is null or empty in onEvent"

    invoke-static {p1, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    .line 127
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 128
    return v0

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    const/16 v1, 0x100

    if-gt p1, v1, :cond_1

    .line 130
    return v0

    .line 132
    :cond_1
    const-string p1, "MobclickAgent"

    const-string v0, "Event label or value is empty or too long in tracking Event"

    invoke-static {p1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 67
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/umeng/analytics/b/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b/d;->c:Lcom/umeng/analytics/b/b;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/umeng/analytics/c/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v1}, Lcom/umeng/analytics/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/umeng/analytics/c/a;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/umeng/analytics/b/b;->a(Ljava/lang/String;Lcom/umeng/analytics/c/a;)V

    .line 71
    return-void

    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 7

    .line 50
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/umeng/analytics/b/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 55
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p2, p0, Lcom/umeng/analytics/b/d;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/b/a;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/a;

    move-result-object p2

    new-instance v1, Lcom/umeng/analytics/c/b;

    move-object v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/umeng/analytics/c/b;-><init>(Ljava/lang/String;Ljava/util/Map;JI)V

    invoke-virtual {p2, v1}, Lcom/umeng/analytics/b/a;->a(Lcom/umeng/analytics/d/i;)V

    .line 58
    return-void

    .line 51
    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/umeng/analytics/b/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/b/a;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/a;

    move-result-object v0

    new-instance v1, Lcom/umeng/analytics/c/b;

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/umeng/analytics/c/b;-><init>(Ljava/lang/String;Ljava/util/Map;JI)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/b/a;->b(Lcom/umeng/analytics/d/i;)V

    .line 64
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    return-void

    .line 42
    :cond_0
    invoke-direct {p0, p2}, Lcom/umeng/analytics/b/d;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/b/a;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/a;

    move-result-object v0

    new-instance v1, Lcom/umeng/analytics/c/b;

    const/4 v6, -0x1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/umeng/analytics/c/b;-><init>(Ljava/lang/String;Ljava/util/Map;JI)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/b/a;->a(Lcom/umeng/analytics/d/i;)V

    .line 47
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    return-void

    .line 91
    :cond_0
    invoke-direct {p0, p2}, Lcom/umeng/analytics/b/d;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b/d;->c:Lcom/umeng/analytics/b/b;

    invoke-static {p1, p3, p2}, Lcom/umeng/analytics/c/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3, p2}, Lcom/umeng/analytics/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/umeng/analytics/c/a;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/umeng/analytics/b/b;->a(Ljava/lang/String;Lcom/umeng/analytics/c/a;)V

    .line 96
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 74
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/umeng/analytics/b/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b/d;->c:Lcom/umeng/analytics/b/b;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/umeng/analytics/c/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/b/b;->b(Ljava/lang/String;)Lcom/umeng/analytics/c/a;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/umeng/analytics/c/a;->a:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 82
    int-to-long v4, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/umeng/analytics/b/d;->a(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 84
    :cond_1
    return-void

    .line 75
    :cond_2
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 99
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b/d;->c:Lcom/umeng/analytics/b/b;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/umeng/analytics/c/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/umeng/analytics/b/b;->b(Ljava/lang/String;)Lcom/umeng/analytics/c/a;

    move-result-object p2

    .line 105
    if-eqz p2, :cond_1

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p2, Lcom/umeng/analytics/c/a;->a:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 107
    iget-object p2, p2, Lcom/umeng/analytics/c/a;->d:Ljava/util/Map;

    int-to-long v0, v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/umeng/analytics/b/d;->a(Ljava/lang/String;Ljava/util/Map;J)V

    .line 109
    :cond_1
    return-void
.end method
