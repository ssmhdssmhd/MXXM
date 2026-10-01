.class public final Lcom/umeng/analytics/b/a;
.super Ljava/lang/Object;
.source "CacheService.java"


# static fields
.field private static c:Lcom/umeng/analytics/b/a;


# instance fields
.field private a:Lcom/umeng/analytics/b/f;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/b/a;->b:Landroid/content/Context;

    .line 19
    new-instance p1, Lcom/umeng/analytics/b/h;

    iget-object v0, p0, Lcom/umeng/analytics/b/a;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/umeng/analytics/b/h;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/umeng/analytics/b/a;->a:Lcom/umeng/analytics/b/f;

    .line 20
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/analytics/b/a;
    .locals 2

    const-class v0, Lcom/umeng/analytics/b/a;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/b/a;->c:Lcom/umeng/analytics/b/a;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 24
    new-instance v1, Lcom/umeng/analytics/b/a;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/b/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/analytics/b/a;->c:Lcom/umeng/analytics/b/a;

    .line 27
    :cond_0
    sget-object p0, Lcom/umeng/analytics/b/a;->c:Lcom/umeng/analytics/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/umeng/analytics/b/a;)Lcom/umeng/analytics/b/f;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/umeng/analytics/b/a;->a:Lcom/umeng/analytics/b/f;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/b/f;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/umeng/analytics/b/a;->a:Lcom/umeng/analytics/b/f;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 62
    new-instance v0, Lcom/umeng/analytics/b/a$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/b/a$1;-><init>(Lcom/umeng/analytics/b/a;I)V

    invoke-static {v0}, Lcom/umeng/analytics/d;->b(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method public a(Lcom/umeng/analytics/b/f;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/umeng/analytics/b/a;->a:Lcom/umeng/analytics/b/f;

    .line 32
    return-void
.end method

.method public a(Lcom/umeng/analytics/d/g;)V
    .locals 1

    .line 49
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b/a;->a:Lcom/umeng/analytics/b/f;

    invoke-interface {v0, p1}, Lcom/umeng/analytics/b/f;->a(Lcom/umeng/analytics/d/g;)V

    .line 50
    :cond_0
    return-void
.end method

.method public a(Lcom/umeng/analytics/d/i;)V
    .locals 1

    .line 39
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b/a;->a:Lcom/umeng/analytics/b/f;

    invoke-interface {v0, p1}, Lcom/umeng/analytics/b/f;->b(Lcom/umeng/analytics/d/i;)V

    .line 40
    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b/a;->a(I)V

    .line 41
    return-void
.end method

.method public a(Lcom/umeng/analytics/d/x;)V
    .locals 1

    .line 53
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b/a;->a:Lcom/umeng/analytics/b/f;

    invoke-interface {v0, p1}, Lcom/umeng/analytics/b/f;->a(Lcom/umeng/analytics/d/x;)V

    .line 54
    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b/a;->a(I)V

    .line 55
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 58
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b/a;->a:Lcom/umeng/analytics/b/f;

    invoke-interface {v0, p1}, Lcom/umeng/analytics/b/f;->a(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 70
    new-instance v0, Lcom/umeng/analytics/b/a$2;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/b/a$2;-><init>(Lcom/umeng/analytics/b/a;)V

    invoke-static {v0}, Lcom/umeng/analytics/d;->b(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public b(Lcom/umeng/analytics/d/i;)V
    .locals 1

    .line 44
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b/a;->a:Lcom/umeng/analytics/b/f;

    invoke-interface {v0, p1}, Lcom/umeng/analytics/b/f;->a(Lcom/umeng/analytics/d/i;)V

    .line 45
    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b/a;->a(I)V

    .line 46
    return-void
.end method
