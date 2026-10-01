.class public abstract Lcom/umeng/analytics/a/a;
.super Ljava/lang/Object;
.source "AbstractIdTracker.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/k;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/umeng/analytics/d/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/analytics/a/a;->a:I

    .line 17
    const/16 v0, 0x14

    iput v0, p0, Lcom/umeng/analytics/a/a;->b:I

    .line 23
    iput-object p1, p0, Lcom/umeng/analytics/a/a;->c:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private h()Z
    .locals 8

    .line 43
    iget-object v0, p0, Lcom/umeng/analytics/a/a;->e:Lcom/umeng/analytics/d/l;

    .line 45
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/umeng/analytics/d/l;->c()Ljava/lang/String;

    move-result-object v1

    .line 46
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/umeng/analytics/d/l;->j()I

    move-result v3

    .line 47
    :goto_1
    invoke-virtual {p0}, Lcom/umeng/analytics/a/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/umeng/analytics/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    if-eqz v4, :cond_5

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 50
    if-nez v0, :cond_2

    new-instance v0, Lcom/umeng/analytics/d/l;

    invoke-direct {v0}, Lcom/umeng/analytics/d/l;-><init>()V

    .line 52
    :cond_2
    invoke-virtual {v0, v4}, Lcom/umeng/analytics/d/l;->a(Ljava/lang/String;)Lcom/umeng/analytics/d/l;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/umeng/analytics/d/l;->a(J)Lcom/umeng/analytics/d/l;

    .line 54
    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/umeng/analytics/d/l;->a(I)Lcom/umeng/analytics/d/l;

    .line 56
    new-instance v3, Lcom/umeng/analytics/d/k;

    invoke-direct {v3}, Lcom/umeng/analytics/d/k;-><init>()V

    .line 57
    iget-object v6, p0, Lcom/umeng/analytics/a/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/umeng/analytics/d/k;->a(Ljava/lang/String;)Lcom/umeng/analytics/d/k;

    .line 58
    invoke-virtual {v3, v4}, Lcom/umeng/analytics/d/k;->c(Ljava/lang/String;)Lcom/umeng/analytics/d/k;

    .line 59
    invoke-virtual {v3, v1}, Lcom/umeng/analytics/d/k;->b(Ljava/lang/String;)Lcom/umeng/analytics/d/k;

    .line 60
    invoke-virtual {v0}, Lcom/umeng/analytics/d/l;->f()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/umeng/analytics/d/k;->a(J)Lcom/umeng/analytics/d/k;

    .line 62
    iget-object v1, p0, Lcom/umeng/analytics/a/a;->d:Ljava/util/List;

    if-nez v1, :cond_3

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/umeng/analytics/a/a;->d:Ljava/util/List;

    .line 66
    :cond_3
    iget-object v1, p0, Lcom/umeng/analytics/a/a;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lcom/umeng/analytics/a/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0xa

    if-le v1, v3, :cond_4

    .line 69
    iget-object v1, p0, Lcom/umeng/analytics/a/a;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 72
    :cond_4
    iput-object v0, p0, Lcom/umeng/analytics/a/a;->e:Lcom/umeng/analytics/d/l;

    .line 73
    return v5

    .line 76
    :cond_5
    return v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 96
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 97
    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 103
    return-object v0

    .line 106
    :cond_1
    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    return-object v0

    .line 110
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    return-object v0

    .line 114
    :cond_3
    return-object p1
.end method

.method public a(Lcom/umeng/analytics/d/l;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/umeng/analytics/a/a;->e:Lcom/umeng/analytics/d/l;

    .line 85
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/k;",
            ">;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/umeng/analytics/a/a;->d:Ljava/util/List;

    .line 93
    return-void
.end method

.method public a()Z
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/umeng/analytics/a/a;->h()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/umeng/analytics/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 138
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lcom/umeng/analytics/b/j;->b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 139
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 141
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/umeng/analytics/a/a;->d:Ljava/util/List;

    .line 142
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/umeng/analytics/d/l;

    iput-object p1, p0, Lcom/umeng/analytics/a/a;->e:Lcom/umeng/analytics/d/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/umeng/analytics/a/a;->e:Lcom/umeng/analytics/d/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/a/a;->e:Lcom/umeng/analytics/d/l;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/l;->j()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 36
    const/4 v0, 0x0

    return v0

    .line 39
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public d()Lcom/umeng/analytics/d/l;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/umeng/analytics/a/a;->e:Lcom/umeng/analytics/d/l;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/k;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/umeng/analytics/a/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 121
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 124
    iget-object v2, p0, Lcom/umeng/analytics/a/a;->d:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 125
    iget-object v2, p0, Lcom/umeng/analytics/a/a;->e:Lcom/umeng/analytics/d/l;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 128
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/b/j;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method
