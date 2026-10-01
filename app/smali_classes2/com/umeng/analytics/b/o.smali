.class public Lcom/umeng/analytics/b/o;
.super Ljava/lang/Object;
.source "StatTracer.java"


# static fields
.field private static final h:Ljava/lang/String; = "successful_request"

.field private static final i:Ljava/lang/String; = "failed_requests "

.field private static final j:Ljava/lang/String; = "last_request_spent_ms"

.field private static final k:Ljava/lang/String; = "last_request_time"

.field private static final l:Ljava/lang/String; = "first_activate_time"


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field private final d:I

.field private e:I

.field private f:J

.field private g:J

.field private m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const v0, 0x36ee80

    iput v0, p0, Lcom/umeng/analytics/b/o;->d:I

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/analytics/b/o;->f:J

    .line 22
    iput-wide v0, p0, Lcom/umeng/analytics/b/o;->g:J

    .line 33
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b/o;->b(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/d/d;
    .locals 3

    .line 101
    invoke-static {p0}, Lcom/umeng/analytics/b/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/m;

    move-result-object p0

    .line 103
    new-instance v0, Lcom/umeng/analytics/d/d;

    invoke-direct {v0}, Lcom/umeng/analytics/d/d;-><init>()V

    .line 105
    const-string v1, "failed_requests "

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/d;->c(I)Lcom/umeng/analytics/d/d;

    .line 106
    const-string v1, "last_request_spent_ms"

    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/d;->d(I)Lcom/umeng/analytics/d/d;

    .line 107
    const-string/jumbo v1, "successful_request"

    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d/d;->a(I)Lcom/umeng/analytics/d/d;

    .line 109
    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b/o;->m:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Lcom/umeng/analytics/b/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/m;

    move-result-object p1

    .line 40
    const-string/jumbo v0, "successful_request"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/b/o;->a:I

    .line 41
    const-string v0, "failed_requests "

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/b/o;->b:I

    .line 43
    const-string v0, "last_request_spent_ms"

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/b/o;->e:I

    .line 44
    const-string v0, "last_request_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/b/o;->c:J

    .line 45
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 48
    iget v0, p0, Lcom/umeng/analytics/b/o;->e:I

    const v1, 0x36ee80

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/umeng/analytics/b/o;->e:I

    :goto_0
    return v1
.end method

.method public b()Z
    .locals 5

    .line 52
    iget-wide v0, p0, Lcom/umeng/analytics/b/o;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 2

    .line 56
    iget v0, p0, Lcom/umeng/analytics/b/o;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/b/o;->a:I

    .line 58
    iget-wide v0, p0, Lcom/umeng/analytics/b/o;->f:J

    iput-wide v0, p0, Lcom/umeng/analytics/b/o;->c:J

    .line 59
    return-void
.end method

.method public d()V
    .locals 1

    .line 62
    iget v0, p0, Lcom/umeng/analytics/b/o;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/b/o;->b:I

    .line 63
    return-void
.end method

.method public e()V
    .locals 2

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/b/o;->f:J

    .line 67
    return-void
.end method

.method public f()V
    .locals 4

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/analytics/b/o;->f:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/umeng/analytics/b/o;->e:I

    .line 71
    return-void
.end method

.method public g()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/umeng/analytics/b/o;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/b/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/m;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/umeng/analytics/b/m;->a()Lcom/umeng/analytics/b/m$a;

    move-result-object v0

    const-string/jumbo v1, "successful_request"

    iget v2, p0, Lcom/umeng/analytics/b/o;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;I)Lcom/umeng/analytics/b/m$a;

    move-result-object v0

    const-string v1, "failed_requests "

    iget v2, p0, Lcom/umeng/analytics/b/o;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;I)Lcom/umeng/analytics/b/m$a;

    move-result-object v0

    const-string v1, "last_request_spent_ms"

    iget v2, p0, Lcom/umeng/analytics/b/o;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;I)Lcom/umeng/analytics/b/m$a;

    move-result-object v0

    const-string v1, "last_request_time"

    iget-wide v2, p0, Lcom/umeng/analytics/b/o;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;J)Lcom/umeng/analytics/b/m$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b/m$a;->b()V

    .line 82
    return-void
.end method

.method public h()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/umeng/analytics/b/o;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/b/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b/m;->a()Lcom/umeng/analytics/b/m$a;

    move-result-object v0

    const-string v1, "first_activate_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;J)Lcom/umeng/analytics/b/m$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b/m$a;->b()V

    .line 86
    return-void
.end method

.method public i()Z
    .locals 5

    .line 89
    iget-wide v0, p0, Lcom/umeng/analytics/b/o;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 90
    iget-object v0, p0, Lcom/umeng/analytics/b/o;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/b/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/m;

    move-result-object v0

    const-string v1, "first_activate_time"

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/b/o;->g:J

    .line 93
    :cond_0
    iget-wide v0, p0, Lcom/umeng/analytics/b/o;->g:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()J
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/umeng/analytics/b/o;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/umeng/analytics/b/o;->g:J

    :goto_0
    return-wide v0
.end method
