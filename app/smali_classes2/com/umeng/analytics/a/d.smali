.class public Lcom/umeng/analytics/a/d;
.super Ljava/lang/Object;
.source "IdTracker.java"


# instance fields
.field private a:Lcom/umeng/analytics/d/m;

.field private b:J

.field private c:J

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/umeng/analytics/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/a/d;->a:Lcom/umeng/analytics/d/m;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/d;->d:Ljava/util/Set;

    .line 31
    iput-object p1, p0, Lcom/umeng/analytics/a/d;->e:Landroid/content/Context;

    .line 32
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/umeng/analytics/a/d;->c:J

    .line 33
    return-void
.end method

.method private g()V
    .locals 7

    .line 73
    new-instance v0, Lcom/umeng/analytics/d/m;

    invoke-direct {v0}, Lcom/umeng/analytics/d/m;-><init>()V

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v3, p0, Lcom/umeng/analytics/a/d;->d:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/analytics/a/a;

    .line 78
    invoke-virtual {v4}, Lcom/umeng/analytics/a/a;->c()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v4}, Lcom/umeng/analytics/a/a;->d()Lcom/umeng/analytics/d/l;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 81
    invoke-virtual {v4}, Lcom/umeng/analytics/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/umeng/analytics/a/a;->d()Lcom/umeng/analytics/d/l;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_1
    invoke-virtual {v4}, Lcom/umeng/analytics/a/a;->e()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/umeng/analytics/a/a;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 85
    invoke-virtual {v4}, Lcom/umeng/analytics/a/a;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    :cond_2
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {v0, v2}, Lcom/umeng/analytics/d/m;->a(Ljava/util/List;)Lcom/umeng/analytics/d/m;

    .line 90
    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/m;->a(Ljava/util/Map;)Lcom/umeng/analytics/d/m;

    .line 92
    iput-object v0, p0, Lcom/umeng/analytics/a/d;->a:Lcom/umeng/analytics/d/m;

    .line 93
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    iget-wide v2, p0, Lcom/umeng/analytics/a/d;->b:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/umeng/analytics/a/d;->c:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_4

    .line 46
    nop

    .line 48
    iget-object v2, p0, Lcom/umeng/analytics/a/d;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/analytics/a/a;

    .line 49
    invoke-virtual {v4}, Lcom/umeng/analytics/a/a;->c()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 50
    nop

    .line 51
    const/4 v3, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v4}, Lcom/umeng/analytics/a/a;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    const/4 v3, 0x1

    .line 57
    :cond_1
    goto :goto_0

    .line 59
    :cond_2
    if-eqz v3, :cond_3

    .line 60
    invoke-direct {p0}, Lcom/umeng/analytics/a/d;->g()V

    .line 61
    invoke-virtual {p0}, Lcom/umeng/analytics/a/d;->f()V

    .line 64
    :cond_3
    iput-wide v0, p0, Lcom/umeng/analytics/a/d;->b:J

    .line 66
    :cond_4
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/umeng/analytics/a/d;->c:J

    .line 41
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/a;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/umeng/analytics/a/d;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public b()Lcom/umeng/analytics/d/m;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/umeng/analytics/a/d;->a:Lcom/umeng/analytics/d/m;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 5

    .line 100
    nop

    .line 101
    iget-object v0, p0, Lcom/umeng/analytics/a/d;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/analytics/a/a;

    .line 102
    invoke-virtual {v3}, Lcom/umeng/analytics/a/a;->c()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v3}, Lcom/umeng/analytics/a/a;->e()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/umeng/analytics/a/a;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 105
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/umeng/analytics/a/a;->a(Ljava/util/List;)V

    .line 106
    const/4 v2, 0x1

    .line 108
    :cond_1
    goto :goto_0

    .line 110
    :cond_2
    if-eqz v2, :cond_3

    .line 111
    iget-object v0, p0, Lcom/umeng/analytics/a/d;->a:Lcom/umeng/analytics/d/m;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/m;->b(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/umeng/analytics/a/d;->f()V

    .line 114
    :cond_3
    return-void
.end method

.method public e()V
    .locals 6

    .line 117
    iget-object v0, p0, Lcom/umeng/analytics/a/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/b/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/m;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/umeng/analytics/a/d;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    iget-object v2, p0, Lcom/umeng/analytics/a/d;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/analytics/a/a;

    .line 121
    invoke-virtual {v3}, Lcom/umeng/analytics/a/a;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    if-eqz v4, :cond_0

    .line 124
    invoke-virtual {v3, v4}, Lcom/umeng/analytics/a/a;->b(Ljava/lang/String;)V

    .line 127
    :cond_0
    invoke-virtual {v3}, Lcom/umeng/analytics/a/a;->c()Z

    move-result v4

    if-nez v4, :cond_1

    .line 128
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_1
    goto :goto_0

    .line 132
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/a/a;

    .line 133
    iget-object v2, p0, Lcom/umeng/analytics/a/d;->d:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    goto :goto_1

    .line 136
    :cond_3
    invoke-direct {p0}, Lcom/umeng/analytics/a/d;->g()V

    .line 137
    return-void
.end method

.method public f()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/umeng/analytics/a/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/b/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b/m;->a()Lcom/umeng/analytics/b/m$a;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/umeng/analytics/a/d;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/a/a;

    .line 143
    invoke-virtual {v2}, Lcom/umeng/analytics/a/a;->g()Ljava/lang/String;

    move-result-object v3

    .line 144
    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {v2}, Lcom/umeng/analytics/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/analytics/b/m$a;

    .line 147
    :cond_0
    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v0}, Lcom/umeng/analytics/b/m$a;->b()V

    .line 150
    return-void
.end method
