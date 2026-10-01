.class public Lcom/umeng/analytics/d/i;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/i$c;,
        Lcom/umeng/analytics/d/i$d;,
        Lcom/umeng/analytics/d/i$a;,
        Lcom/umeng/analytics/d/i$b;,
        Lcom/umeng/analytics/d/i$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/i;",
        "Lcom/umeng/analytics/d/i$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final a:Lcom/umeng/a/a/a/b/m;

.field private static final b:Lcom/umeng/a/a/a/b/c;

.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/analytics/d/i$e;",
            "Lcom/umeng/a/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lcom/umeng/a/a/a/b/c;

.field private static final j:Lcom/umeng/a/a/a/b/c;

.field private static final k:Lcom/umeng/a/a/a/b/c;

.field private static final l:Lcom/umeng/a/a/a/b/c;

.field private static final m:Ljava/util/Map;
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

.field private static final n:I = 0x0

.field private static final o:I = 0x1

.field private static final p:I = 0x2


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/t;",
            ">;"
        }
    .end annotation
.end field

.field public e:J

.field public f:I

.field public g:J

.field private q:B

.field private r:[Lcom/umeng/analytics/d/i$e;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "Event"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/i;->a:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v1, "name"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/i;->b:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v4, "properties"

    const/16 v5, 0xd

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/i;->i:Lcom/umeng/a/a/a/b/c;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v7, 0x3

    const-string v8, "duration"

    const/16 v9, 0xa

    invoke-direct {v0, v8, v9, v7}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/i;->j:Lcom/umeng/a/a/a/b/c;

    .line 37
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v7, 0x4

    const-string v10, "acc"

    const/16 v11, 0x8

    invoke-direct {v0, v10, v11, v7}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/i;->k:Lcom/umeng/a/a/a/b/c;

    .line 38
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v7, 0x5

    const-string/jumbo v12, "ts"

    invoke-direct {v0, v12, v9, v7}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/i;->l:Lcom/umeng/a/a/a/b/c;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/i;->m:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/umeng/analytics/d/i;->m:Ljava/util/Map;

    const-class v7, Lcom/umeng/a/a/a/c/c;

    new-instance v13, Lcom/umeng/analytics/d/i$b;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/umeng/analytics/d/i$b;-><init>(Lcom/umeng/analytics/d/i$1;)V

    invoke-interface {v0, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/umeng/analytics/d/i;->m:Ljava/util/Map;

    const-class v7, Lcom/umeng/a/a/a/c/d;

    new-instance v13, Lcom/umeng/analytics/d/i$d;

    invoke-direct {v13, v14}, Lcom/umeng/analytics/d/i$d;-><init>(Lcom/umeng/analytics/d/i$1;)V

    invoke-interface {v0, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/util/EnumMap;

    const-class v7, Lcom/umeng/analytics/d/i$e;

    invoke-direct {v0, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 131
    sget-object v7, Lcom/umeng/analytics/d/i$e;->a:Lcom/umeng/analytics/d/i$e;

    new-instance v13, Lcom/umeng/a/a/a/a/b;

    new-instance v14, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v14, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v13, v1, v3, v14}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lcom/umeng/analytics/d/i$e;->b:Lcom/umeng/analytics/d/i$e;

    new-instance v7, Lcom/umeng/a/a/a/a/b;

    new-instance v13, Lcom/umeng/a/a/a/a/e;

    new-instance v14, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v14, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    new-instance v2, Lcom/umeng/a/a/a/a/g;

    const/16 v15, 0xc

    const-class v11, Lcom/umeng/analytics/d/t;

    invoke-direct {v2, v15, v11}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v13, v5, v14, v2}, Lcom/umeng/a/a/a/a/e;-><init>(BLcom/umeng/a/a/a/a/c;Lcom/umeng/a/a/a/a/c;)V

    invoke-direct {v7, v4, v3, v13}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lcom/umeng/analytics/d/i$e;->c:Lcom/umeng/analytics/d/i$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v9}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v8, v6, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lcom/umeng/analytics/d/i$e;->d:Lcom/umeng/analytics/d/i$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v10, v6, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/umeng/analytics/d/i$e;->e:Lcom/umeng/analytics/d/i$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v9}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v12, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/i;->h:Ljava/util/Map;

    .line 144
    const-class v0, Lcom/umeng/analytics/d/i;

    sget-object v1, Lcom/umeng/analytics/d/i;->h:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/i;->q:B

    .line 127
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/umeng/analytics/d/i$e;

    sget-object v2, Lcom/umeng/analytics/d/i$e;->c:Lcom/umeng/analytics/d/i$e;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/umeng/analytics/d/i$e;->d:Lcom/umeng/analytics/d/i$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/i;->r:[Lcom/umeng/analytics/d/i$e;

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/i;)V
    .locals 5

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/i;->q:B

    .line 127
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/umeng/analytics/d/i$e;

    sget-object v2, Lcom/umeng/analytics/d/i$e;->c:Lcom/umeng/analytics/d/i$e;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/umeng/analytics/d/i$e;->d:Lcom/umeng/analytics/d/i$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/i;->r:[Lcom/umeng/analytics/d/i$e;

    .line 166
    iget-byte v0, p1, Lcom/umeng/analytics/d/i;->q:B

    iput-byte v0, p0, Lcom/umeng/analytics/d/i;->q:B

    .line 167
    invoke-virtual {p1}, Lcom/umeng/analytics/d/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p1, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/d/i;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    iget-object v1, p1, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 174
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/d/t;

    .line 177
    nop

    .line 179
    new-instance v4, Lcom/umeng/analytics/d/t;

    invoke-direct {v4, v2}, Lcom/umeng/analytics/d/t;-><init>(Lcom/umeng/analytics/d/t;)V

    .line 181
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    goto :goto_0

    .line 183
    :cond_1
    iput-object v0, p0, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    .line 185
    :cond_2
    iget-wide v0, p1, Lcom/umeng/analytics/d/i;->e:J

    iput-wide v0, p0, Lcom/umeng/analytics/d/i;->e:J

    .line 186
    iget v0, p1, Lcom/umeng/analytics/d/i;->f:I

    iput v0, p0, Lcom/umeng/analytics/d/i;->f:I

    .line 187
    iget-wide v0, p1, Lcom/umeng/analytics/d/i;->g:J

    iput-wide v0, p0, Lcom/umeng/analytics/d/i;->g:J

    .line 188
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/t;",
            ">;J)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lcom/umeng/analytics/d/i;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    .line 158
    iput-wide p3, p0, Lcom/umeng/analytics/d/i;->g:J

    .line 159
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/i;->e(Z)V

    .line 160
    return-void
.end method

.method static synthetic A()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/i;->l:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 409
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/d/i;->q:B

    .line 410
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/i;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    nop

    .line 414
    return-void

    .line 411
    :catch_0
    move-exception p1

    .line 412
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

    .line 400
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/i;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    nop

    .line 404
    return-void

    .line 401
    :catch_0
    move-exception p1

    .line 402
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic v()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/i;->a:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic w()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/i;->b:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic x()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/i;->i:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic y()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/i;->j:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic z()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/i;->k:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/umeng/analytics/d/i;
    .locals 0

    .line 270
    iput-wide p1, p0, Lcom/umeng/analytics/d/i;->e:J

    .line 271
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/i;->c(Z)V

    .line 272
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/d/i;
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/umeng/analytics/d/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/t;",
            ">;)",
            "Lcom/umeng/analytics/d/i;"
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    .line 247
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 339
    sget-object v0, Lcom/umeng/analytics/d/i;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 340
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/umeng/analytics/d/t;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 225
    if-nez p1, :cond_0

    .line 226
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

    .line 228
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/i;->d(I)Lcom/umeng/analytics/d/i$e;

    move-result-object p1

    return-object p1
.end method

.method public b(J)Lcom/umeng/analytics/d/i;
    .locals 0

    .line 316
    iput-wide p1, p0, Lcom/umeng/analytics/d/i;->g:J

    .line 317
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/i;->e(Z)V

    .line 318
    return-object p0
.end method

.method public b()V
    .locals 3

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

    .line 197
    iput-object v0, p0, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/i;->c(Z)V

    .line 199
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/umeng/analytics/d/i;->e:J

    .line 200
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/i;->d(Z)V

    .line 201
    iput v0, p0, Lcom/umeng/analytics/d/i;->f:I

    .line 202
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/i;->e(Z)V

    .line 203
    iput-wide v1, p0, Lcom/umeng/analytics/d/i;->g:J

    .line 204
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 343
    sget-object v0, Lcom/umeng/analytics/d/i;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 344
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 260
    if-nez p1, :cond_0

    .line 261
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    .line 263
    :cond_0
    return-void
.end method

.method public c()Lcom/umeng/analytics/d/i;
    .locals 1

    .line 191
    new-instance v0, Lcom/umeng/analytics/d/i;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/i;-><init>(Lcom/umeng/analytics/d/i;)V

    return-object v0
.end method

.method public c(I)Lcom/umeng/analytics/d/i;
    .locals 0

    .line 293
    iput p1, p0, Lcom/umeng/analytics/d/i;->f:I

    .line 294
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/i;->d(Z)V

    .line 295
    return-object p0
.end method

.method public c(Z)V
    .locals 2

    .line 285
    iget-byte v0, p0, Lcom/umeng/analytics/d/i;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/i;->q:B

    .line 286
    return-void
.end method

.method public d(I)Lcom/umeng/analytics/d/i$e;
    .locals 0

    .line 335
    invoke-static {p1}, Lcom/umeng/analytics/d/i$e;->a(I)Lcom/umeng/analytics/d/i$e;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Z)V
    .locals 2

    .line 308
    iget-byte v0, p0, Lcom/umeng/analytics/d/i;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/i;->q:B

    .line 309
    return-void
.end method

.method public e()V
    .locals 1

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 331
    iget-byte v0, p0, Lcom/umeng/analytics/d/i;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/i;->q:B

    .line 332
    return-void
.end method

.method public f()Z
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/umeng/analytics/d/i;->c()Lcom/umeng/analytics/d/i;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/t;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    return-object v0
.end method

.method public j()V
    .locals 1

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    .line 252
    return-void
.end method

.method public k()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()J
    .locals 2

    .line 266
    iget-wide v0, p0, Lcom/umeng/analytics/d/i;->e:J

    return-wide v0
.end method

.method public m()V
    .locals 2

    .line 276
    iget-byte v0, p0, Lcom/umeng/analytics/d/i;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/i;->q:B

    .line 277
    return-void
.end method

.method public n()Z
    .locals 2

    .line 281
    iget-byte v0, p0, Lcom/umeng/analytics/d/i;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/umeng/analytics/d/i;->f:I

    return v0
.end method

.method public p()V
    .locals 2

    .line 299
    iget-byte v0, p0, Lcom/umeng/analytics/d/i;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/i;->q:B

    .line 300
    return-void
.end method

.method public q()Z
    .locals 2

    .line 304
    iget-byte v0, p0, Lcom/umeng/analytics/d/i;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public r()J
    .locals 2

    .line 312
    iget-wide v0, p0, Lcom/umeng/analytics/d/i;->g:J

    return-wide v0
.end method

.method public s()V
    .locals 2

    .line 322
    iget-byte v0, p0, Lcom/umeng/analytics/d/i;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/i;->q:B

    .line 323
    return-void
.end method

.method public t()Z
    .locals 2

    .line 327
    iget-byte v0, p0, Lcom/umeng/analytics/d/i;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    nop

    .line 351
    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget-object v1, p0, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :goto_0
    nop

    .line 358
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v3, "properties:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v3, p0, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 361
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 363
    :cond_1
    iget-object v2, p0, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 365
    :goto_1
    nop

    .line 366
    invoke-virtual {p0}, Lcom/umeng/analytics/d/i;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v2, "duration:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-wide v2, p0, Lcom/umeng/analytics/d/i;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 370
    nop

    .line 372
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/d/i;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v2, "acc:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    iget v2, p0, Lcom/umeng/analytics/d/i;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    nop

    .line 378
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string/jumbo v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget-wide v1, p0, Lcom/umeng/analytics/d/i;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 381
    nop

    .line 382
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/umeng/analytics/d/i;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/umeng/analytics/d/i;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 396
    return-void

    .line 392
    :cond_0
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'properties\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/i;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_1
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'name\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/i;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method
