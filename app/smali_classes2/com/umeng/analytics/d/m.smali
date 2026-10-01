.class public Lcom/umeng/analytics/d/m;
.super Ljava/lang/Object;
.source "IdTracking.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/m$c;,
        Lcom/umeng/analytics/d/m$d;,
        Lcom/umeng/analytics/d/m$a;,
        Lcom/umeng/analytics/d/m$b;,
        Lcom/umeng/analytics/d/m$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/m;",
        "Lcom/umeng/analytics/d/m$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/analytics/d/m$e;",
            "Lcom/umeng/a/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/umeng/a/a/a/b/m;

.field private static final f:Lcom/umeng/a/a/a/b/c;

.field private static final g:Lcom/umeng/a/a/a/b/c;

.field private static final h:Lcom/umeng/a/a/a/b/c;

.field private static final i:Ljava/util/Map;
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
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/l;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/k;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field private j:[Lcom/umeng/analytics/d/m$e;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "IdTracking"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/m;->e:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string/jumbo v1, "snapshots"

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/m;->f:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v4, "journals"

    const/16 v5, 0xf

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/m;->g:Lcom/umeng/a/a/a/b/c;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v7, 0x3

    const-string v8, "checksum"

    const/16 v9, 0xb

    invoke-direct {v0, v8, v9, v7}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/m;->h:Lcom/umeng/a/a/a/b/c;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/m;->i:Ljava/util/Map;

    .line 40
    sget-object v0, Lcom/umeng/analytics/d/m;->i:Ljava/util/Map;

    const-class v7, Lcom/umeng/a/a/a/c/c;

    new-instance v10, Lcom/umeng/analytics/d/m$b;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/umeng/analytics/d/m$b;-><init>(Lcom/umeng/analytics/d/m$1;)V

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/umeng/analytics/d/m;->i:Ljava/util/Map;

    const-class v7, Lcom/umeng/a/a/a/c/d;

    new-instance v10, Lcom/umeng/analytics/d/m$d;

    invoke-direct {v10, v11}, Lcom/umeng/analytics/d/m$d;-><init>(Lcom/umeng/analytics/d/m$1;)V

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/util/EnumMap;

    const-class v7, Lcom/umeng/analytics/d/m$e;

    invoke-direct {v0, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 117
    sget-object v7, Lcom/umeng/analytics/d/m$e;->a:Lcom/umeng/analytics/d/m$e;

    new-instance v10, Lcom/umeng/a/a/a/a/b;

    new-instance v11, Lcom/umeng/a/a/a/a/e;

    new-instance v12, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v12, v9}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    new-instance v13, Lcom/umeng/a/a/a/a/g;

    const-class v14, Lcom/umeng/analytics/d/l;

    const/16 v15, 0xc

    invoke-direct {v13, v15, v14}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v11, v2, v12, v13}, Lcom/umeng/a/a/a/a/e;-><init>(BLcom/umeng/a/a/a/a/c;Lcom/umeng/a/a/a/a/c;)V

    invoke-direct {v10, v1, v3, v11}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/umeng/analytics/d/m$e;->b:Lcom/umeng/analytics/d/m$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v3, Lcom/umeng/a/a/a/a/d;

    new-instance v7, Lcom/umeng/a/a/a/a/g;

    const-class v10, Lcom/umeng/analytics/d/k;

    invoke-direct {v7, v15, v10}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v3, v5, v7}, Lcom/umeng/a/a/a/a/d;-><init>(BLcom/umeng/a/a/a/a/c;)V

    invoke-direct {v2, v4, v6, v3}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lcom/umeng/analytics/d/m$e;->c:Lcom/umeng/analytics/d/m$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v3, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v3, v9}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v8, v6, v3}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/m;->d:Ljava/util/Map;

    .line 127
    const-class v0, Lcom/umeng/analytics/d/m;

    sget-object v1, Lcom/umeng/analytics/d/m;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/analytics/d/m$e;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/analytics/d/m$e;->b:Lcom/umeng/analytics/d/m$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/umeng/analytics/d/m$e;->c:Lcom/umeng/analytics/d/m$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/d/m;->j:[Lcom/umeng/analytics/d/m$e;

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/m;)V
    .locals 5

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/analytics/d/m$e;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/analytics/d/m$e;->b:Lcom/umeng/analytics/d/m$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/umeng/analytics/d/m$e;->c:Lcom/umeng/analytics/d/m$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/d/m;->j:[Lcom/umeng/analytics/d/m$e;

    .line 144
    invoke-virtual {p1}, Lcom/umeng/analytics/d/m;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    iget-object v1, p1, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 148
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/d/l;

    .line 151
    nop

    .line 153
    new-instance v4, Lcom/umeng/analytics/d/l;

    invoke-direct {v4, v2}, Lcom/umeng/analytics/d/l;-><init>(Lcom/umeng/analytics/d/l;)V

    .line 155
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    goto :goto_0

    .line 157
    :cond_0
    iput-object v0, p0, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    .line 159
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/analytics/d/m;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    iget-object v1, p1, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/d/k;

    .line 162
    new-instance v3, Lcom/umeng/analytics/d/k;

    invoke-direct {v3, v2}, Lcom/umeng/analytics/d/k;-><init>(Lcom/umeng/analytics/d/k;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    goto :goto_1

    .line 164
    :cond_2
    iput-object v0, p0, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    .line 166
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/analytics/d/m;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    iget-object p1, p1, Lcom/umeng/analytics/d/m;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/umeng/analytics/d/m;->c:Ljava/lang/String;

    .line 169
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/l;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/umeng/analytics/d/m;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    .line 138
    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 346
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/m;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    nop

    .line 350
    return-void

    .line 347
    :catch_0
    move-exception p1

    .line 348
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/m;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    nop

    .line 342
    return-void

    .line 339
    :catch_0
    move-exception p1

    .line 340
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic q()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/m;->e:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic r()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/m;->f:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic s()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/m;->g:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic t()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/m;->h:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/umeng/analytics/d/m$e;
    .locals 0

    .line 281
    invoke-static {p1}, Lcom/umeng/analytics/d/m$e;->a(I)Lcom/umeng/analytics/d/m$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/umeng/analytics/d/m;
    .locals 1

    .line 172
    new-instance v0, Lcom/umeng/analytics/d/m;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/m;-><init>(Lcom/umeng/analytics/d/m;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/d/m;
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/umeng/analytics/d/m;->c:Ljava/lang/String;

    .line 262
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/umeng/analytics/d/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/k;",
            ">;)",
            "Lcom/umeng/analytics/d/m;"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    .line 238
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/umeng/analytics/d/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/l;",
            ">;)",
            "Lcom/umeng/analytics/d/m;"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    .line 199
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/umeng/analytics/d/m;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 286
    return-void
.end method

.method public a(Lcom/umeng/analytics/d/k;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/umeng/analytics/d/l;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 212
    if-nez p1, :cond_0

    .line 213
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    .line 215
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/m;->a(I)Lcom/umeng/analytics/d/m$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    .line 178
    iput-object v0, p0, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    .line 179
    iput-object v0, p0, Lcom/umeng/analytics/d/m;->c:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 289
    sget-object v0, Lcom/umeng/analytics/d/m;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 290
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 251
    if-nez p1, :cond_0

    .line 252
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    .line 254
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public c(Z)V
    .locals 0

    .line 275
    if-nez p1, :cond_0

    .line 276
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/m;->c:Ljava/lang/String;

    .line 278
    :cond_0
    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/l;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    return-object v0
.end method

.method public e()V
    .locals 1

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    .line 204
    return-void
.end method

.method public f()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/m;->a()Lcom/umeng/analytics/d/m;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public i()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/umeng/analytics/d/k;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/k;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    .line 243
    return-void
.end method

.method public l()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n()V
    .locals 1

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/m;->c:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public o()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 334
    return-void

    .line 331
    :cond_0
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'snapshots\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdTracking("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    nop

    .line 297
    const-string/jumbo v1, "snapshots:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v1, p0, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/d/m;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    :goto_0
    nop

    .line 304
    invoke-virtual {p0}, Lcom/umeng/analytics/d/m;->l()Z

    move-result v1

    const-string v3, ", "

    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, "journals:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-object v1, p0, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    if-nez v1, :cond_1

    .line 308
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/d/m;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    :goto_1
    nop

    .line 314
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/d/m;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 315
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v1, p0, Lcom/umeng/analytics/d/m;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 318
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 320
    :cond_3
    iget-object v1, p0, Lcom/umeng/analytics/d/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :goto_2
    nop

    .line 324
    :cond_4
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
