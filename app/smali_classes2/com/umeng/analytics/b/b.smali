.class public Lcom/umeng/analytics/b/b;
.super Ljava/lang/Object;
.source "Caretaker.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/umeng/analytics/b/m;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/umeng/analytics/c/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "umeng_event_snapshot"

    iput-object v0, p0, Lcom/umeng/analytics/b/b;->a:Ljava/lang/String;

    .line 13
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/umeng/analytics/b/b;->b:Z

    .line 16
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/b/b;->d:Ljava/util/Map;

    .line 19
    invoke-static {p1, v0}, Lcom/umeng/analytics/b/m;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/analytics/b/m;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/b/b;->c:Lcom/umeng/analytics/b/m;

    .line 20
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 73
    nop

    .line 74
    iget-object v0, p0, Lcom/umeng/analytics/b/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/umeng/analytics/b/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 77
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {v0}, Lcom/umeng/analytics/b/j;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 74
    :cond_1
    const/4 v0, 0x0

    .line 84
    :goto_1
    iget-object v1, p0, Lcom/umeng/analytics/b/b;->c:Lcom/umeng/analytics/b/m;

    invoke-virtual {v1}, Lcom/umeng/analytics/b/m;->a()Lcom/umeng/analytics/b/m$a;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/umeng/analytics/b/m$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/analytics/b/m$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b/m$a;->b()V

    .line 85
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/umeng/analytics/b/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 94
    return v1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b/b;->c:Lcom/umeng/analytics/b/m;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/umeng/analytics/b/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_1

    .line 100
    invoke-static {v0}, Lcom/umeng/analytics/b/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 101
    if-eqz v0, :cond_1

    .line 102
    iget-object v2, p0, Lcom/umeng/analytics/b/b;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return v1

    .line 107
    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/umeng/analytics/b/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/umeng/analytics/b/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    .line 31
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/umeng/analytics/c/a;)V
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/umeng/analytics/b/b;->b:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b/b;->d(Ljava/lang/String;)Z

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/umeng/analytics/b/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p2, p0, Lcom/umeng/analytics/b/b;->d:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :goto_0
    iget-boolean p2, p0, Lcom/umeng/analytics/b/b;->b:Z

    if-eqz p2, :cond_2

    .line 48
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b/b;->c(Ljava/lang/String;)V

    .line 50
    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/umeng/analytics/b/b;->b:Z

    .line 24
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/analytics/c/a;
    .locals 2

    .line 53
    iget-boolean v0, p0, Lcom/umeng/analytics/b/b;->b:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b/b;->d(Ljava/lang/String;)Z

    .line 57
    :cond_0
    nop

    .line 58
    iget-object v0, p0, Lcom/umeng/analytics/b/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/umeng/analytics/b/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/c/a;

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/umeng/analytics/b/b;->b:Z

    if-eqz v1, :cond_2

    .line 66
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b/b;->c(Ljava/lang/String;)V

    .line 69
    :cond_2
    return-object v0
.end method
