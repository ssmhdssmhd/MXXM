.class public abstract Lcom/umeng/analytics/b/g;
.super Ljava/lang/Object;
.source "MemoCache.java"

# interfaces
.implements Lcom/umeng/analytics/b/f;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x4


# instance fields
.field private d:Lcom/umeng/analytics/d/z;

.field private e:Lcom/umeng/analytics/d/p;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/umeng/analytics/d/z;

    invoke-direct {v0}, Lcom/umeng/analytics/d/z;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b/g;->d:Lcom/umeng/analytics/d/z;

    .line 15
    new-instance v0, Lcom/umeng/analytics/d/p;

    invoke-direct {v0}, Lcom/umeng/analytics/d/p;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b/g;->e:Lcom/umeng/analytics/d/p;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/b/g;->f:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/umeng/analytics/b/g;->g:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/umeng/analytics/d/b;)V
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b/g;->d:Lcom/umeng/analytics/d/z;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/z;->a(Lcom/umeng/analytics/d/b;)Lcom/umeng/analytics/d/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/umeng/analytics/d/g;)V
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b/g;->e:Lcom/umeng/analytics/d/p;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/p;->a(Lcom/umeng/analytics/d/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/umeng/analytics/d/i;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/umeng/analytics/b/g;->e:Lcom/umeng/analytics/d/p;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/p;->b(Lcom/umeng/analytics/d/i;)V

    .line 102
    return-void
.end method

.method public declared-synchronized a(Lcom/umeng/analytics/d/x;)V
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b/g;->d:Lcom/umeng/analytics/d/z;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/z;->a(Lcom/umeng/analytics/d/x;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 96
    :try_start_0
    iput-object p1, p0, Lcom/umeng/analytics/b/g;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(I)Z
    .locals 0

    .line 33
    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized b(Lcom/umeng/analytics/d/i;)V
    .locals 1

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b/g;->e:Lcom/umeng/analytics/d/p;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/p;->a(Lcom/umeng/analytics/d/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/umeng/analytics/b/g;->g:Landroid/content/Context;

    return-object v0
.end method

.method public f()I
    .locals 2

    .line 37
    nop

    .line 39
    iget-object v0, p0, Lcom/umeng/analytics/b/g;->e:Lcom/umeng/analytics/d/p;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/p;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/umeng/analytics/b/g;->e:Lcom/umeng/analytics/d/p;

    invoke-virtual {v1}, Lcom/umeng/analytics/d/p;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    iget-object v1, p0, Lcom/umeng/analytics/b/g;->d:Lcom/umeng/analytics/d/z;

    invoke-virtual {v1}, Lcom/umeng/analytics/d/z;->x()I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    iget-object v1, p0, Lcom/umeng/analytics/b/g;->e:Lcom/umeng/analytics/d/p;

    invoke-virtual {v1}, Lcom/umeng/analytics/d/p;->q()I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    iget-object v1, p0, Lcom/umeng/analytics/b/g;->d:Lcom/umeng/analytics/d/z;

    invoke-virtual {v1}, Lcom/umeng/analytics/d/z;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 48
    :cond_0
    return v0
.end method

.method public declared-synchronized g()Lcom/umeng/analytics/d/z;
    .locals 2

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b/g;->f:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/umeng/analytics/b/g;->e:Lcom/umeng/analytics/d/p;

    invoke-virtual {v1}, Lcom/umeng/analytics/d/p;->e()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/umeng/analytics/b/g;->e:Lcom/umeng/analytics/d/p;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/d/p;->a(Ljava/lang/String;)Lcom/umeng/analytics/d/p;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b/g;->e:Lcom/umeng/analytics/d/p;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/p;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/analytics/b/g;->e:Lcom/umeng/analytics/d/p;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/p;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/b/g;->e:Lcom/umeng/analytics/d/p;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/p;->p()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/b/g;->e:Lcom/umeng/analytics/d/p;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/p;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b/g;->d:Lcom/umeng/analytics/d/z;

    iget-object v1, p0, Lcom/umeng/analytics/b/g;->e:Lcom/umeng/analytics/d/p;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/z;->a(Lcom/umeng/analytics/d/p;)V

    .line 61
    new-instance v0, Lcom/umeng/analytics/d/p;

    invoke-direct {v0}, Lcom/umeng/analytics/d/p;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b/g;->e:Lcom/umeng/analytics/d/p;

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b/g;->d:Lcom/umeng/analytics/d/z;

    .line 65
    new-instance v1, Lcom/umeng/analytics/d/z;

    invoke-direct {v1}, Lcom/umeng/analytics/d/z;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/b/g;->d:Lcom/umeng/analytics/d/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized h()V
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b/g;->d:Lcom/umeng/analytics/d/z;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/z;->b()V

    .line 72
    iget-object v0, p0, Lcom/umeng/analytics/b/g;->e:Lcom/umeng/analytics/d/p;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/p;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized i()Z
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b/g;->d:Lcom/umeng/analytics/d/z;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/z;->r()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
