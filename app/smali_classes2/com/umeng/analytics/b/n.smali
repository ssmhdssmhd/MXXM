.class public Lcom/umeng/analytics/b/n;
.super Ljava/lang/Object;
.source "SessionTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "session_start_time"

.field private static final b:Ljava/lang/String; = "session_end_time"

.field private static final c:Ljava/lang/String; = "session_id"

.field private static final f:Ljava/lang/String; = "activities"


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "a_start_time"

    iput-object v0, p0, Lcom/umeng/analytics/b/n;->d:Ljava/lang/String;

    .line 28
    const-string v0, "a_end_time"

    iput-object v0, p0, Lcom/umeng/analytics/b/n;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/umeng/analytics/b/m;)Ljava/lang/String;
    .locals 4

    .line 179
    invoke-static {p1}, Lcom/umeng/analytics/b/a;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/a;

    move-result-object v0

    .line 181
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b/n;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Lcom/umeng/analytics/b/a;->a(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/d/x;

    move-result-object p1

    .line 186
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Lcom/umeng/analytics/b/a;->a(Lcom/umeng/analytics/d/x;)V

    goto :goto_0

    .line 189
    :cond_0
    const/4 p1, 0x0

    move-object v2, p1

    check-cast v2, Lcom/umeng/analytics/d/x;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/b/a;->a(Lcom/umeng/analytics/d/x;)V

    .line 192
    :goto_0
    invoke-virtual {p2}, Lcom/umeng/analytics/b/m;->a()Lcom/umeng/analytics/b/m$a;

    move-result-object p1

    .line 194
    const-string p2, "session_id"

    invoke-virtual {p1, p2, v1}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/analytics/b/m$a;

    .line 195
    const-string p2, "session_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, p2, v2, v3}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;J)Lcom/umeng/analytics/b/m$a;

    .line 196
    const-string p2, "session_end_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, v2, v3}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;J)Lcom/umeng/analytics/b/m$a;

    .line 198
    invoke-virtual {p1}, Lcom/umeng/analytics/b/m$a;->b()V

    .line 200
    return-object v1
.end method

.method private a(Lcom/umeng/analytics/b/m;)V
    .locals 2

    .line 84
    invoke-virtual {p1}, Lcom/umeng/analytics/b/m;->a()Lcom/umeng/analytics/b/m$a;

    move-result-object p1

    .line 86
    const-string v0, "session_start_time"

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;)Lcom/umeng/analytics/b/m$a;

    .line 87
    const-string v0, "session_end_time"

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;)Lcom/umeng/analytics/b/m$a;

    .line 88
    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;)Lcom/umeng/analytics/b/m$a;

    .line 89
    const-string v0, "a_start_time"

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;)Lcom/umeng/analytics/b/m$a;

    .line 90
    const-string v0, "a_end_time"

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;)Lcom/umeng/analytics/b/m$a;

    .line 92
    const-string v0, "activities"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/analytics/b/m$a;

    .line 94
    invoke-virtual {p1}, Lcom/umeng/analytics/b/m$a;->b()V

    .line 95
    return-void
.end method

.method private b(Lcom/umeng/analytics/b/m;)Z
    .locals 9

    .line 161
    const-string v0, "a_start_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;J)J

    move-result-wide v3

    .line 162
    const-string v0, "a_end_time"

    invoke-virtual {p1, v0, v1, v2}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;J)J

    move-result-wide v5

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 166
    const/4 p1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    sub-long v0, v7, v3

    sget-wide v2, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 167
    const-string v0, "MobclickAgent"

    const-string v1, "onResume called before onPause"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return p1

    .line 171
    :cond_0
    sub-long/2addr v7, v5

    sget-wide v0, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v2, v7, v0

    if-lez v2, :cond_1

    .line 172
    const/4 p1, 0x1

    return p1

    .line 174
    :cond_1
    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/umeng/analytics/d/x;
    .locals 15

    .line 33
    invoke-static/range {p1 .. p1}, Lcom/umeng/analytics/b/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/m;

    move-result-object v0

    .line 35
    const-string v1, "session_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    if-nez v1, :cond_0

    return-object v2

    .line 39
    :cond_0
    const-string v2, "session_start_time"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;J)J

    move-result-wide v5

    .line 40
    const-string v2, "session_end_time"

    invoke-virtual {v0, v2, v3, v4}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;J)J

    move-result-wide v7

    .line 41
    nop

    .line 43
    cmp-long v2, v7, v3

    if-eqz v2, :cond_2

    .line 44
    sub-long v9, v7, v5

    .line 45
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/32 v13, 0x5265c00

    cmp-long v2, v11, v13

    if-lez v2, :cond_1

    .line 46
    goto :goto_0

    .line 45
    :cond_1
    move-wide v3, v9

    .line 50
    :cond_2
    :goto_0
    new-instance v2, Lcom/umeng/analytics/d/x;

    invoke-direct {v2}, Lcom/umeng/analytics/d/x;-><init>()V

    .line 52
    invoke-virtual {v2, v1}, Lcom/umeng/analytics/d/x;->a(Ljava/lang/String;)Lcom/umeng/analytics/d/x;

    .line 53
    invoke-virtual {v2, v5, v6}, Lcom/umeng/analytics/d/x;->a(J)Lcom/umeng/analytics/d/x;

    .line 54
    invoke-virtual {v2, v7, v8}, Lcom/umeng/analytics/d/x;->b(J)Lcom/umeng/analytics/d/x;

    .line 55
    invoke-virtual {v2, v3, v4}, Lcom/umeng/analytics/d/x;->c(J)Lcom/umeng/analytics/d/x;

    .line 57
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getLocation()[D

    move-result-object v1

    .line 58
    if-eqz v1, :cond_4

    .line 59
    new-instance v3, Lcom/umeng/analytics/d/q;

    const/4 v10, 0x0

    aget-wide v4, v1, v10

    const/4 v11, 0x1

    aget-wide v6, v1, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Lcom/umeng/analytics/d/q;-><init>(DDJ)V

    .line 60
    invoke-virtual {v2}, Lcom/umeng/analytics/d/x;->y()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    invoke-virtual {v2, v3}, Lcom/umeng/analytics/d/x;->a(Lcom/umeng/analytics/d/q;)V

    goto :goto_1

    .line 63
    :cond_3
    new-array v1, v11, [Lcom/umeng/analytics/d/q;

    aput-object v3, v1, v10

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/umeng/analytics/d/x;->b(Ljava/util/List;)Lcom/umeng/analytics/d/x;

    .line 67
    :cond_4
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/umeng/analytics/b/q;->a(Landroid/content/Context;)Lcom/umeng/analytics/d/y;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_5

    .line 69
    invoke-virtual {v2, v1}, Lcom/umeng/analytics/d/x;->a(Lcom/umeng/analytics/d/y;)Lcom/umeng/analytics/d/x;

    .line 72
    :cond_5
    invoke-static {v0}, Lcom/umeng/analytics/b/r;->a(Lcom/umeng/analytics/b/m;)Ljava/util/List;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 75
    invoke-virtual {v2, v1}, Lcom/umeng/analytics/d/x;->a(Ljava/util/List;)Lcom/umeng/analytics/d/x;

    .line 78
    :cond_6
    invoke-direct {p0, v0}, Lcom/umeng/analytics/b/n;->a(Lcom/umeng/analytics/b/m;)V

    .line 80
    return-object v2
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 99
    invoke-static {p1}, Lcom/umeng/common/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 103
    if-eqz p1, :cond_0

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/common/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Appkey is null or empty, Please check AndroidManifest.xml"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Landroid/content/Context;)V
    .locals 4

    .line 116
    invoke-static {p1}, Lcom/umeng/analytics/b/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/m;

    move-result-object v0

    .line 117
    if-nez v0, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    nop

    .line 121
    invoke-direct {p0, v0}, Lcom/umeng/analytics/b/n;->b(Lcom/umeng/analytics/b/m;)Z

    move-result v1

    const-string v2, "MobclickAgent"

    if-eqz v1, :cond_1

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b/n;->a(Landroid/content/Context;Lcom/umeng/analytics/b/m;)Ljava/lang/String;

    move-result-object p1

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start new session: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    const-string v1, "session_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {p1}, Lcom/umeng/analytics/b/a;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/umeng/analytics/b/a;->a(Ljava/lang/String;)V

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extend current session: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    invoke-virtual {v0}, Lcom/umeng/analytics/b/m;->a()Lcom/umeng/analytics/b/m$a;

    move-result-object p1

    .line 131
    const-string v0, "a_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;J)Lcom/umeng/analytics/b/m$a;

    .line 132
    const-string v0, "a_end_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;J)Lcom/umeng/analytics/b/m$a;

    .line 134
    invoke-virtual {p1}, Lcom/umeng/analytics/b/m$a;->b()V

    .line 135
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 6

    .line 138
    invoke-static {p1}, Lcom/umeng/analytics/b/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/m;

    move-result-object p1

    .line 139
    if-nez p1, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    const-string v0, "a_start_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;J)J

    move-result-wide v3

    .line 145
    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    sget-boolean v3, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v3, :cond_1

    .line 146
    const-string p1, "MobclickAgent"

    const-string v0, "onPause called before onResume"

    invoke-static {p1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 150
    invoke-virtual {p1}, Lcom/umeng/analytics/b/m;->a()Lcom/umeng/analytics/b/m$a;

    move-result-object p1

    .line 152
    invoke-virtual {p1, v0, v1, v2}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;J)Lcom/umeng/analytics/b/m$a;

    .line 153
    const-string v0, "a_end_time"

    invoke-virtual {p1, v0, v3, v4}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;J)Lcom/umeng/analytics/b/m$a;

    .line 154
    const-string v0, "session_end_time"

    invoke-virtual {p1, v0, v3, v4}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;J)Lcom/umeng/analytics/b/m$a;

    .line 156
    invoke-virtual {p1}, Lcom/umeng/analytics/b/m$a;->b()V

    .line 158
    :goto_0
    return-void
.end method
