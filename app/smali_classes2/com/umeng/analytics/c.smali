.class public Lcom/umeng/analytics/c;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Lcom/umeng/analytics/b/k;


# instance fields
.field private final a:Lcom/umeng/analytics/onlineconfig/a;

.field private b:Landroid/content/Context;

.field private c:Lcom/umeng/analytics/b;

.field private d:Lcom/umeng/analytics/b/c;

.field private e:Lcom/umeng/analytics/b/r;

.field private f:Lcom/umeng/analytics/b/n;

.field private g:Lcom/umeng/analytics/b/d;

.field private h:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/umeng/analytics/onlineconfig/a;

    invoke-direct {v0}, Lcom/umeng/analytics/onlineconfig/a;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/onlineconfig/a;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/c;->b:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/umeng/analytics/b/c;

    invoke-direct {v0}, Lcom/umeng/analytics/b/c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/c;->d:Lcom/umeng/analytics/b/c;

    .line 34
    new-instance v0, Lcom/umeng/analytics/b/r;

    invoke-direct {v0}, Lcom/umeng/analytics/b/r;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/c;->e:Lcom/umeng/analytics/b/r;

    .line 35
    new-instance v0, Lcom/umeng/analytics/b/n;

    invoke-direct {v0}, Lcom/umeng/analytics/b/n;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/c;->f:Lcom/umeng/analytics/b/n;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/c;->h:Z

    .line 41
    iget-object v0, p0, Lcom/umeng/analytics/c;->d:Lcom/umeng/analytics/b/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/b/c;->a(Lcom/umeng/analytics/b/k;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/c;)Lcom/umeng/analytics/onlineconfig/a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/onlineconfig/a;

    return-object p0
.end method

.method static synthetic a(Lcom/umeng/analytics/c;Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/umeng/analytics/c;->g(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/umeng/analytics/c;)Lcom/umeng/analytics/b/d;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/umeng/analytics/c;->g:Lcom/umeng/analytics/b/d;

    return-object p0
.end method

.method static synthetic b(Lcom/umeng/analytics/c;Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/umeng/analytics/c;->h(Landroid/content/Context;)V

    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/umeng/analytics/c;->h:Z

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/c;->b:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/umeng/analytics/b/d;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/c;->g:Lcom/umeng/analytics/b/d;

    .line 49
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/umeng/analytics/c;->h:Z

    .line 51
    :cond_0
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/umeng/analytics/c;->f:Lcom/umeng/analytics/b/n;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/b/n;->c(Landroid/content/Context;)V

    .line 206
    iget-object p1, p0, Lcom/umeng/analytics/c;->c:Lcom/umeng/analytics/b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/umeng/analytics/c;->c:Lcom/umeng/analytics/b;

    invoke-interface {p1}, Lcom/umeng/analytics/b;->a()V

    .line 207
    :cond_0
    return-void
.end method

.method private h(Landroid/content/Context;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/umeng/analytics/c;->f:Lcom/umeng/analytics/b/n;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/b/n;->d(Landroid/content/Context;)V

    .line 211
    iget-object v0, p0, Lcom/umeng/analytics/c;->e:Lcom/umeng/analytics/b/r;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/b/r;->a(Landroid/content/Context;)V

    .line 213
    iget-object v0, p0, Lcom/umeng/analytics/c;->c:Lcom/umeng/analytics/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/c;->c:Lcom/umeng/analytics/b;

    invoke-interface {v0}, Lcom/umeng/analytics/b;->b()V

    .line 214
    :cond_0
    invoke-static {p1}, Lcom/umeng/analytics/b/a;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b/a;->b()V

    .line 215
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 78
    sput p1, Lcom/umeng/analytics/AnalyticsConfig;->mVerticalType:I

    .line 79
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 1

    .line 87
    if-nez p1, :cond_0

    .line 88
    const-string p1, "MobclickAgent"

    const-string/jumbo v0, "unexpected null context in onResume"

    invoke-static {p1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/onlineconfig/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/onlineconfig/a;->a(Landroid/content/Context;)V

    .line 95
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/c$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/c$1;-><init>(Lcom/umeng/analytics/c;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/analytics/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_0

    .line 103
    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    :goto_0
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 168
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    return-void

    .line 172
    :cond_0
    const-string v0, "MobclickAgent"

    if-nez p1, :cond_1

    .line 174
    const-string/jumbo p1, "unexpected null context in reportError"

    invoke-static {v0, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void

    .line 179
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/umeng/analytics/c;->h:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/umeng/analytics/c;->f(Landroid/content/Context;)V

    .line 180
    :cond_2
    invoke-static {p1}, Lcom/umeng/analytics/b/a;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/a;

    move-result-object p1

    .line 181
    new-instance v1, Lcom/umeng/analytics/c/c;

    invoke-direct {v1, p2}, Lcom/umeng/analytics/c/c;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Lcom/umeng/analytics/c/c;->a(Z)Lcom/umeng/analytics/c/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/b/a;->a(Lcom/umeng/analytics/d/g;)V

    .line 182
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/b/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 183
    :catch_0
    move-exception p1

    .line 184
    const-string p2, ""

    invoke-static {v0, p2, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 186
    :goto_0
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 271
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/c;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/c;->f(Landroid/content/Context;)V

    .line 272
    :cond_0
    new-instance p1, Lcom/umeng/analytics/c$6;

    invoke-direct {p1, p0, p2, p3}, Lcom/umeng/analytics/c$6;-><init>(Lcom/umeng/analytics/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/analytics/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception p1

    .line 278
    const-string p2, "MobclickAgent"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 280
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 6

    .line 228
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/c;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/c;->f(Landroid/content/Context;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/c;->g:Lcom/umeng/analytics/b/d;

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/b/d;->a(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    move-object p1, v0

    .line 231
    const-string p2, "MobclickAgent"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 233
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 160
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/c;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/c;->f(Landroid/content/Context;)V

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/c;->g:Lcom/umeng/analytics/b/d;

    invoke-virtual {p1, p2, p3}, Lcom/umeng/analytics/b/d;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 162
    :catch_0
    move-exception p1

    .line 163
    const-string p2, "MobclickAgent"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 165
    :goto_0
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 296
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/c;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/c;->f(Landroid/content/Context;)V

    .line 297
    :cond_0
    new-instance p1, Lcom/umeng/analytics/c$8;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/umeng/analytics/c$8;-><init>(Lcom/umeng/analytics/c;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/analytics/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_0

    .line 302
    :catch_0
    move-exception p1

    .line 303
    const-string p2, "MobclickAgent"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 305
    :goto_0
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 237
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/c;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/c;->f(Landroid/content/Context;)V

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/c;->g:Lcom/umeng/analytics/b/d;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/umeng/analytics/b/d;->a(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_0

    .line 239
    :catch_0
    move-exception p1

    .line 240
    const-string p2, "MobclickAgent"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 242
    :goto_0
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    .line 189
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/c;->h:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/umeng/analytics/c;->f(Landroid/content/Context;)V

    .line 195
    :cond_1
    invoke-static {p1}, Lcom/umeng/analytics/b/a;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/a;

    move-result-object p1

    .line 196
    new-instance v0, Lcom/umeng/analytics/c/c;

    invoke-direct {v0, p2}, Lcom/umeng/analytics/c/c;-><init>(Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/umeng/analytics/c/c;->a(Z)Lcom/umeng/analytics/c/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/b/a;->a(Lcom/umeng/analytics/d/g;)V

    .line 197
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/b/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto :goto_0

    .line 198
    :catch_0
    move-exception p1

    .line 199
    const-string p2, "MobclickAgent"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 201
    :goto_0
    return-void

    .line 190
    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/umeng/analytics/b;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/umeng/analytics/c;->c:Lcom/umeng/analytics/b;

    .line 75
    return-void
.end method

.method a(Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/onlineconfig/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;)V

    .line 110
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .line 54
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/c;->e:Lcom/umeng/analytics/b/r;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/b/r;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 82
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    .line 83
    sput-object p2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/c;->e:Lcom/umeng/analytics/b/r;

    invoke-virtual {v0}, Lcom/umeng/analytics/b/r;->a()V

    .line 335
    iget-object v0, p0, Lcom/umeng/analytics/c;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 336
    if-eqz p1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/umeng/analytics/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/b/a;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/a;

    move-result-object v0

    new-instance v1, Lcom/umeng/analytics/c/c;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/c/c;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/b/a;->a(Lcom/umeng/analytics/d/g;)V

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/c;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/c;->h(Landroid/content/Context;)V

    .line 340
    iget-object p1, p0, Lcom/umeng/analytics/c;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/b/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b/m;->a()Lcom/umeng/analytics/b/m$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b/m$a;->c()Z

    .line 343
    :cond_1
    invoke-static {}, Lcom/umeng/analytics/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    goto :goto_0

    .line 344
    :catch_0
    move-exception p1

    .line 345
    const-string v0, "MobclickAgent"

    const-string v1, "Exception in onAppCrash"

    invoke-static {v0, v1, p1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 347
    :goto_0
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 3

    .line 113
    const-string v0, "MobclickAgent"

    if-nez p1, :cond_0

    .line 114
    const-string/jumbo p1, "unexpected null context in onResume"

    invoke-static {v0, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void

    .line 118
    :cond_0
    sget-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/umeng/analytics/c;->e:Lcom/umeng/analytics/b/r;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/b/r;->a(Ljava/lang/String;)V

    .line 123
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/umeng/analytics/c;->h:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/umeng/analytics/c;->f(Landroid/content/Context;)V

    .line 125
    :cond_2
    new-instance v1, Lcom/umeng/analytics/c$2;

    invoke-direct {v1, p0, p1}, Lcom/umeng/analytics/c$2;-><init>(Lcom/umeng/analytics/c;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/umeng/analytics/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 131
    :catch_0
    move-exception p1

    .line 132
    const-string v1, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v0, v1, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 135
    :goto_0
    return-void
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 246
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/c;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/c;->f(Landroid/content/Context;)V

    .line 247
    :cond_0
    new-instance p1, Lcom/umeng/analytics/c$4;

    invoke-direct {p1, p0, p2}, Lcom/umeng/analytics/c$4;-><init>(Lcom/umeng/analytics/c;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/analytics/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_0

    .line 252
    :catch_0
    move-exception p1

    .line 253
    const-string p2, "MobclickAgent"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 255
    :goto_0
    return-void
.end method

.method b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 284
    :try_start_0
    new-instance p1, Lcom/umeng/analytics/c$7;

    invoke-direct {p1, p0, p2, p3}, Lcom/umeng/analytics/c$7;-><init>(Lcom/umeng/analytics/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/analytics/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 289
    :catch_0
    move-exception p1

    .line 290
    const-string p2, "MobclickAgent"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 292
    :goto_0
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .line 64
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/c;->e:Lcom/umeng/analytics/b/r;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/b/r;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    :cond_0
    :goto_0
    return-void
.end method

.method c(Landroid/content/Context;)V
    .locals 3

    .line 138
    const-string v0, "MobclickAgent"

    if-nez p1, :cond_0

    .line 139
    const-string/jumbo p1, "unexpected null context in onPause"

    invoke-static {v0, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 143
    :cond_0
    sget-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/umeng/analytics/c;->e:Lcom/umeng/analytics/b/r;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/b/r;->b(Ljava/lang/String;)V

    .line 148
    :cond_1
    :try_start_0
    new-instance v1, Lcom/umeng/analytics/c$3;

    invoke-direct {v1, p0, p1}, Lcom/umeng/analytics/c$3;-><init>(Lcom/umeng/analytics/c;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/umeng/analytics/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception p1

    .line 154
    const-string v1, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v0, v1, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 156
    :goto_0
    return-void
.end method

.method c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 259
    :try_start_0
    new-instance p1, Lcom/umeng/analytics/c$5;

    invoke-direct {p1, p0, p2}, Lcom/umeng/analytics/c$5;-><init>(Lcom/umeng/analytics/c;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/analytics/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    goto :goto_0

    .line 264
    :catch_0
    move-exception p1

    .line 265
    const-string p2, "MobclickAgent"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 267
    :goto_0
    return-void
.end method

.method c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 309
    :try_start_0
    new-instance p1, Lcom/umeng/analytics/c$9;

    invoke-direct {p1, p0, p2, p3}, Lcom/umeng/analytics/c$9;-><init>(Lcom/umeng/analytics/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/analytics/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    goto :goto_0

    .line 314
    :catch_0
    move-exception p1

    .line 315
    const-string p2, "MobclickAgent"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 317
    :goto_0
    return-void
.end method

.method d(Landroid/content/Context;)V
    .locals 2

    .line 219
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/c;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/c;->f(Landroid/content/Context;)V

    .line 220
    :cond_0
    invoke-static {p1}, Lcom/umeng/analytics/b/a;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/a;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/b/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception p1

    .line 222
    const-string v0, "MobclickAgent"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 224
    :goto_0
    return-void
.end method

.method e(Landroid/content/Context;)V
    .locals 1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/c;->e:Lcom/umeng/analytics/b/r;

    invoke-virtual {v0}, Lcom/umeng/analytics/b/r;->a()V

    .line 322
    invoke-direct {p0, p1}, Lcom/umeng/analytics/c;->h(Landroid/content/Context;)V

    .line 323
    invoke-static {p1}, Lcom/umeng/analytics/b/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b/m;->a()Lcom/umeng/analytics/b/m$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b/m$a;->c()Z

    .line 325
    invoke-static {}, Lcom/umeng/analytics/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    goto :goto_0

    .line 326
    :catch_0
    move-exception p1

    .line 327
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    :goto_0
    return-void
.end method
