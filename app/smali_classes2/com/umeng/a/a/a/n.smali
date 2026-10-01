.class public abstract Lcom/umeng/a/a/a/n;
.super Ljava/lang/Object;
.source "TUnion.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/a/a/a/n$c;,
        Lcom/umeng/a/a/a/n$d;,
        Lcom/umeng/a/a/a/n$a;,
        Lcom/umeng/a/a/a/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/umeng/a/a/a/n<",
        "**>;F::",
        "Lcom/umeng/a/a/a/k;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "TT;TF;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/a/a/a/c/a;",
            ">;",
            "Lcom/umeng/a/a/a/c/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected b:Ljava/lang/Object;

.field protected c:Lcom/umeng/a/a/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/a/a/a/n;->a:Ljava/util/Map;

    .line 51
    sget-object v0, Lcom/umeng/a/a/a/n;->a:Ljava/util/Map;

    const-class v1, Lcom/umeng/a/a/a/c/c;

    new-instance v2, Lcom/umeng/a/a/a/n$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/umeng/a/a/a/n$b;-><init>(Lcom/umeng/a/a/a/n$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/umeng/a/a/a/n;->a:Ljava/util/Map;

    const-class v1, Lcom/umeng/a/a/a/c/d;

    new-instance v2, Lcom/umeng/a/a/a/n$d;

    invoke-direct {v2, v3}, Lcom/umeng/a/a/a/n$d;-><init>(Lcom/umeng/a/a/a/n$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/a/a/a/n;->c:Lcom/umeng/a/a/a/k;

    .line 46
    iput-object v0, p0, Lcom/umeng/a/a/a/n;->b:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method protected constructor <init>(Lcom/umeng/a/a/a/k;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/umeng/a/a/a/n;->b(Lcom/umeng/a/a/a/k;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Lcom/umeng/a/a/a/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/a/a/a/n<",
            "TT;TF;>;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p1, Lcom/umeng/a/a/a/n;->c:Lcom/umeng/a/a/a/k;

    iput-object v0, p0, Lcom/umeng/a/a/a/n;->c:Lcom/umeng/a/a/a/k;

    .line 64
    iget-object p1, p1, Lcom/umeng/a/a/a/n;->b:Ljava/lang/Object;

    invoke-static {p1}, Lcom/umeng/a/a/a/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/a/a/a/n;->b:Ljava/lang/Object;

    .line 65
    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 68
    instance-of v0, p0, Lcom/umeng/a/a/a/d;

    if-eqz v0, :cond_0

    .line 69
    check-cast p0, Lcom/umeng/a/a/a/d;

    invoke-interface {p0}, Lcom/umeng/a/a/a/d;->g()Lcom/umeng/a/a/a/d;

    move-result-object p0

    return-object p0

    .line 70
    :cond_0
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 71
    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/umeng/a/a/a/e;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 72
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 73
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/umeng/a/a/a/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 74
    :cond_2
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 75
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lcom/umeng/a/a/a/n;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 76
    :cond_3
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 77
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/umeng/a/a/a/n;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 79
    :cond_4
    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 102
    invoke-static {v1}, Lcom/umeng/a/a/a/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/a/a/a/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/a/a/a/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 93
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 94
    invoke-static {v1}, Lcom/umeng/a/a/a/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected abstract a(Lcom/umeng/a/a/a/k;)Lcom/umeng/a/a/a/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lcom/umeng/a/a/a/b/c;"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/b/c;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/umeng/a/a/a/b/h;S)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    .line 150
    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lcom/umeng/a/a/a/n;->b(S)Lcom/umeng/a/a/a/k;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/umeng/a/a/a/n;->b(Lcom/umeng/a/a/a/k;Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/umeng/a/a/a/n;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 141
    return-void
.end method

.method protected abstract a(Lcom/umeng/a/a/a/k;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation
.end method

.method protected abstract b(S)Lcom/umeng/a/a/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)TF;"
        }
    .end annotation
.end method

.method public b(Lcom/umeng/a/a/a/k;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/umeng/a/a/a/n;->c:Lcom/umeng/a/a/a/k;

    if-ne p1, v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/umeng/a/a/a/n;->j()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get the value of field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " because union\'s set field is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/umeng/a/a/a/n;->c:Lcom/umeng/a/a/a/k;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 1

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/a/a/a/n;->c:Lcom/umeng/a/a/a/k;

    .line 206
    iput-object v0, p0, Lcom/umeng/a/a/a/n;->b:Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/umeng/a/a/a/n;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 155
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/k;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/umeng/a/a/a/n;->a(Lcom/umeng/a/a/a/k;Ljava/lang/Object;)V

    .line 145
    iput-object p1, p0, Lcom/umeng/a/a/a/n;->c:Lcom/umeng/a/a/a/k;

    .line 146
    iput-object p2, p0, Lcom/umeng/a/a/a/n;->b:Ljava/lang/Object;

    .line 147
    return-void
.end method

.method protected abstract c()Lcom/umeng/a/a/a/b/m;
.end method

.method public c(I)Ljava/lang/Object;
    .locals 0

    .line 124
    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lcom/umeng/a/a/a/n;->b(S)Lcom/umeng/a/a/a/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/a/a/a/n;->b(Lcom/umeng/a/a/a/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract c(Lcom/umeng/a/a/a/b/h;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation
.end method

.method public c(Lcom/umeng/a/a/a/k;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/umeng/a/a/a/n;->c:Lcom/umeng/a/a/a/k;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract d(Lcom/umeng/a/a/a/b/h;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation
.end method

.method public d(I)Z
    .locals 0

    .line 136
    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lcom/umeng/a/a/a/n;->b(S)Lcom/umeng/a/a/a/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/a/a/a/n;->c(Lcom/umeng/a/a/a/k;)Z

    move-result p1

    return p1
.end method

.method public i()Lcom/umeng/a/a/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/umeng/a/a/a/n;->c:Lcom/umeng/a/a/a/k;

    return-object v0
.end method

.method public j()Ljava/lang/Object;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/umeng/a/a/a/n;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/umeng/a/a/a/n;->c:Lcom/umeng/a/a/a/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0}, Lcom/umeng/a/a/a/n;->i()Lcom/umeng/a/a/a/k;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/umeng/a/a/a/n;->j()Ljava/lang/Object;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Lcom/umeng/a/a/a/n;->i()Lcom/umeng/a/a/a/k;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/umeng/a/a/a/n;->a(Lcom/umeng/a/a/a/k;)Lcom/umeng/a/a/a/b/c;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/a/a/a/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    instance-of v2, v1, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    .line 195
    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/umeng/a/a/a/e;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_1
    :goto_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
