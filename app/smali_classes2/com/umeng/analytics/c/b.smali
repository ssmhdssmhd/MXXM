.class public Lcom/umeng/analytics/c/b;
.super Lcom/umeng/analytics/d/i;
.source "UEKV.java"


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    sput v0, Lcom/umeng/analytics/c/b;->a:I

    .line 15
    const/4 v0, 0x1

    sput v0, Lcom/umeng/analytics/c/b;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;JI)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/umeng/analytics/d/i;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/c/b;->i:I

    .line 20
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/c/b;->a(Ljava/lang/String;)Lcom/umeng/analytics/d/i;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/umeng/analytics/c/b;->b(J)Lcom/umeng/analytics/d/i;

    .line 23
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 24
    invoke-direct {p0, p2}, Lcom/umeng/analytics/c/b;->b(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/c/b;->a(Ljava/util/Map;)Lcom/umeng/analytics/d/i;

    .line 27
    :cond_0
    if-lez p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 p5, 0x1

    :goto_0
    invoke-virtual {p0, p5}, Lcom/umeng/analytics/c/b;->c(I)Lcom/umeng/analytics/d/i;

    .line 29
    const-wide/16 p1, 0x0

    cmp-long p5, p3, p1

    if-lez p5, :cond_2

    .line 30
    invoke-virtual {p0, p3, p4}, Lcom/umeng/analytics/c/b;->a(J)Lcom/umeng/analytics/d/i;

    .line 32
    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/umeng/analytics/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/umeng/analytics/c/a;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/umeng/analytics/c/a;

    invoke-direct {v0}, Lcom/umeng/analytics/c/a;-><init>()V

    .line 79
    iput-object p0, v0, Lcom/umeng/analytics/c/a;->b:Ljava/lang/String;

    .line 80
    iput-object p1, v0, Lcom/umeng/analytics/c/a;->c:Ljava/lang/String;

    .line 81
    iput-object p2, v0, Lcom/umeng/analytics/c/a;->d:Ljava/util/Map;

    .line 83
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/t;",
            ">;"
        }
    .end annotation

    .line 36
    nop

    .line 37
    nop

    .line 39
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    nop

    .line 43
    const/4 v1, 0x0

    .line 45
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 48
    new-instance v3, Lcom/umeng/analytics/d/t;

    invoke-direct {v3}, Lcom/umeng/analytics/d/t;-><init>()V

    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 51
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 52
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/umeng/analytics/d/t;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 53
    :cond_0
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 54
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/umeng/analytics/d/t;->b(J)V

    goto :goto_1

    .line 55
    :cond_1
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 56
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/umeng/analytics/d/t;->b(J)V

    goto :goto_1

    .line 57
    :cond_2
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_3

    .line 58
    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/umeng/analytics/d/t;->b(J)V

    .line 61
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_0

    .line 66
    :cond_4
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/umeng/analytics/c/b;->i:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/umeng/analytics/c/b;->i:I

    .line 71
    return-void
.end method
