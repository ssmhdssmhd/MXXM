.class public Lcom/umeng/analytics/d/f;
.super Ljava/lang/Object;
.source "Ekv.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/f$c;,
        Lcom/umeng/analytics/d/f$d;,
        Lcom/umeng/analytics/d/f$a;,
        Lcom/umeng/analytics/d/f$b;,
        Lcom/umeng/analytics/d/f$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/f;",
        "Lcom/umeng/analytics/d/f$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/analytics/d/f$e;",
            "Lcom/umeng/a/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lcom/umeng/a/a/a/b/m;

.field private static final h:Lcom/umeng/a/a/a/b/c;

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
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:J

.field public e:I

.field private q:B

.field private r:[Lcom/umeng/analytics/d/f$e;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "Ekv"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/f;->g:Lcom/umeng/a/a/a/b/m;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string/jumbo v1, "ts"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/f;->h:Lcom/umeng/a/a/a/b/c;

    .line 37
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v4, "name"

    const/16 v5, 0xb

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/f;->i:Lcom/umeng/a/a/a/b/c;

    .line 38
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v7, 0x3

    const-string v8, "ckv"

    const/16 v9, 0xd

    invoke-direct {v0, v8, v9, v7}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/f;->j:Lcom/umeng/a/a/a/b/c;

    .line 39
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v7, 0x4

    const-string v10, "duration"

    invoke-direct {v0, v10, v2, v7}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/f;->k:Lcom/umeng/a/a/a/b/c;

    .line 40
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v7, 0x5

    const-string v11, "acc"

    const/16 v12, 0x8

    invoke-direct {v0, v11, v12, v7}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/f;->l:Lcom/umeng/a/a/a/b/c;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/f;->m:Ljava/util/Map;

    .line 44
    sget-object v0, Lcom/umeng/analytics/d/f;->m:Ljava/util/Map;

    const-class v7, Lcom/umeng/a/a/a/c/c;

    new-instance v13, Lcom/umeng/analytics/d/f$b;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/umeng/analytics/d/f$b;-><init>(Lcom/umeng/analytics/d/f$1;)V

    invoke-interface {v0, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/umeng/analytics/d/f;->m:Ljava/util/Map;

    const-class v7, Lcom/umeng/a/a/a/c/d;

    new-instance v13, Lcom/umeng/analytics/d/f$d;

    invoke-direct {v13, v14}, Lcom/umeng/analytics/d/f$d;-><init>(Lcom/umeng/analytics/d/f$1;)V

    invoke-interface {v0, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/util/EnumMap;

    const-class v7, Lcom/umeng/analytics/d/f$e;

    invoke-direct {v0, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 133
    sget-object v7, Lcom/umeng/analytics/d/f$e;->a:Lcom/umeng/analytics/d/f$e;

    new-instance v13, Lcom/umeng/a/a/a/a/b;

    new-instance v14, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v14, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v13, v1, v3, v14}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lcom/umeng/analytics/d/f$e;->b:Lcom/umeng/analytics/d/f$e;

    new-instance v7, Lcom/umeng/a/a/a/a/b;

    new-instance v13, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v13, v5}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v7, v4, v3, v13}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lcom/umeng/analytics/d/f$e;->c:Lcom/umeng/analytics/d/f$e;

    new-instance v4, Lcom/umeng/a/a/a/a/b;

    new-instance v7, Lcom/umeng/a/a/a/a/e;

    new-instance v13, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v13, v5}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    new-instance v14, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v14, v5}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v7, v9, v13, v14}, Lcom/umeng/a/a/a/a/e;-><init>(BLcom/umeng/a/a/a/a/c;Lcom/umeng/a/a/a/a/c;)V

    invoke-direct {v4, v8, v3, v7}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/umeng/analytics/d/f$e;->d:Lcom/umeng/analytics/d/f$e;

    new-instance v3, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v3, v10, v6, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/umeng/analytics/d/f$e;->e:Lcom/umeng/analytics/d/f$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v3, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v3, v12}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v11, v6, v3}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/f;->f:Ljava/util/Map;

    .line 146
    const-class v0, Lcom/umeng/analytics/d/f;

    sget-object v1, Lcom/umeng/analytics/d/f;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 147
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/f;->q:B

    .line 129
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/umeng/analytics/d/f$e;

    sget-object v2, Lcom/umeng/analytics/d/f$e;->d:Lcom/umeng/analytics/d/f$e;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/umeng/analytics/d/f$e;->e:Lcom/umeng/analytics/d/f$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/f;->r:[Lcom/umeng/analytics/d/f$e;

    .line 150
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Lcom/umeng/analytics/d/f;-><init>()V

    .line 158
    iput-wide p1, p0, Lcom/umeng/analytics/d/f;->a:J

    .line 159
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/f;->a(Z)V

    .line 160
    iput-object p3, p0, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    .line 161
    iput-object p4, p0, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/f;)V
    .locals 4

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/f;->q:B

    .line 129
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/umeng/analytics/d/f$e;

    sget-object v2, Lcom/umeng/analytics/d/f$e;->d:Lcom/umeng/analytics/d/f$e;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/umeng/analytics/d/f$e;->e:Lcom/umeng/analytics/d/f$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/f;->r:[Lcom/umeng/analytics/d/f$e;

    .line 168
    iget-byte v0, p1, Lcom/umeng/analytics/d/f;->q:B

    iput-byte v0, p0, Lcom/umeng/analytics/d/f;->q:B

    .line 169
    iget-wide v0, p1, Lcom/umeng/analytics/d/f;->a:J

    iput-wide v0, p0, Lcom/umeng/analytics/d/f;->a:J

    .line 170
    invoke-virtual {p1}, Lcom/umeng/analytics/d/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p1, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    .line 173
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/d/f;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 175
    iget-object v1, p1, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

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

    .line 177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 178
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    nop

    .line 182
    nop

    .line 184
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    goto :goto_0

    .line 186
    :cond_1
    iput-object v0, p0, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    .line 188
    :cond_2
    iget-wide v0, p1, Lcom/umeng/analytics/d/f;->d:J

    iput-wide v0, p0, Lcom/umeng/analytics/d/f;->d:J

    .line 189
    iget p1, p1, Lcom/umeng/analytics/d/f;->e:I

    iput p1, p0, Lcom/umeng/analytics/d/f;->e:I

    .line 190
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

    .line 411
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/d/f;->q:B

    .line 412
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/f;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    nop

    .line 416
    return-void

    .line 413
    :catch_0
    move-exception p1

    .line 414
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

    .line 402
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/f;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    nop

    .line 406
    return-void

    .line 403
    :catch_0
    move-exception p1

    .line 404
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic u()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 33
    sget-object v0, Lcom/umeng/analytics/d/f;->g:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic v()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 33
    sget-object v0, Lcom/umeng/analytics/d/f;->h:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic w()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 33
    sget-object v0, Lcom/umeng/analytics/d/f;->i:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic x()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 33
    sget-object v0, Lcom/umeng/analytics/d/f;->j:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic y()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 33
    sget-object v0, Lcom/umeng/analytics/d/f;->k:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic z()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 33
    sget-object v0, Lcom/umeng/analytics/d/f;->l:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/d/f;
    .locals 1

    .line 193
    new-instance v0, Lcom/umeng/analytics/d/f;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/f;-><init>(Lcom/umeng/analytics/d/f;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/analytics/d/f;
    .locals 0

    .line 318
    iput p1, p0, Lcom/umeng/analytics/d/f;->e:I

    .line 319
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/f;->e(Z)V

    .line 320
    return-object p0
.end method

.method public a(J)Lcom/umeng/analytics/d/f;
    .locals 0

    .line 213
    iput-wide p1, p0, Lcom/umeng/analytics/d/f;->a:J

    .line 214
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/f;->a(Z)V

    .line 215
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/d/f;
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    .line 237
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/umeng/analytics/d/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/umeng/analytics/d/f;"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    .line 272
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 341
    sget-object v0, Lcom/umeng/analytics/d/f;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 342
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 228
    iget-byte v0, p0, Lcom/umeng/analytics/d/f;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/f;->q:B

    .line 229
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/f;->c(I)Lcom/umeng/analytics/d/f$e;

    move-result-object p1

    return-object p1
.end method

.method public b(J)Lcom/umeng/analytics/d/f;
    .locals 0

    .line 295
    iput-wide p1, p0, Lcom/umeng/analytics/d/f;->d:J

    .line 296
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/f;->d(Z)V

    .line 297
    return-object p0
.end method

.method public b()V
    .locals 4

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/f;->a(Z)V

    .line 199
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/umeng/analytics/d/f;->a:J

    .line 200
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    .line 201
    iput-object v3, p0, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    .line 202
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/f;->d(Z)V

    .line 203
    iput-wide v1, p0, Lcom/umeng/analytics/d/f;->d:J

    .line 204
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/f;->e(Z)V

    .line 205
    iput v0, p0, Lcom/umeng/analytics/d/f;->e:I

    .line 206
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 345
    sget-object v0, Lcom/umeng/analytics/d/f;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 346
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 250
    if-nez p1, :cond_0

    .line 251
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    .line 253
    :cond_0
    return-void
.end method

.method public c()J
    .locals 2

    .line 209
    iget-wide v0, p0, Lcom/umeng/analytics/d/f;->a:J

    return-wide v0
.end method

.method public c(I)Lcom/umeng/analytics/d/f$e;
    .locals 0

    .line 337
    invoke-static {p1}, Lcom/umeng/analytics/d/f$e;->a(I)Lcom/umeng/analytics/d/f$e;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)V
    .locals 0

    .line 285
    if-nez p1, :cond_0

    .line 286
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    .line 288
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 219
    iget-byte v0, p0, Lcom/umeng/analytics/d/f;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/f;->q:B

    .line 220
    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 310
    iget-byte v0, p0, Lcom/umeng/analytics/d/f;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/f;->q:B

    .line 311
    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 333
    iget-byte v0, p0, Lcom/umeng/analytics/d/f;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/f;->q:B

    .line 334
    return-void
.end method

.method public e()Z
    .locals 2

    .line 224
    iget-byte v0, p0, Lcom/umeng/analytics/d/f;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/umeng/analytics/d/f;->a()Lcom/umeng/analytics/d/f;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public i()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()I
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    return-object v0
.end method

.method public l()V
    .locals 1

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    .line 277
    return-void
.end method

.method public m()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()J
    .locals 2

    .line 291
    iget-wide v0, p0, Lcom/umeng/analytics/d/f;->d:J

    return-wide v0
.end method

.method public o()V
    .locals 2

    .line 301
    iget-byte v0, p0, Lcom/umeng/analytics/d/f;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/f;->q:B

    .line 302
    return-void
.end method

.method public p()Z
    .locals 2

    .line 306
    iget-byte v0, p0, Lcom/umeng/analytics/d/f;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/umeng/analytics/d/f;->e:I

    return v0
.end method

.method public r()V
    .locals 2

    .line 324
    iget-byte v0, p0, Lcom/umeng/analytics/d/f;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/f;->q:B

    .line 325
    return-void
.end method

.method public s()Z
    .locals 2

    .line 329
    iget-byte v0, p0, Lcom/umeng/analytics/d/f;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public t()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 398
    return-void

    .line 395
    :cond_0
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ckv\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_1
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'name\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/f;->toString()Ljava/lang/String;

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

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ekv("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    nop

    .line 353
    const-string/jumbo v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget-wide v1, p0, Lcom/umeng/analytics/d/f;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 355
    nop

    .line 356
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v2, "name:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-object v2, p0, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    const-string v3, "null"

    if-nez v2, :cond_0

    .line 359
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/umeng/analytics/d/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :goto_0
    nop

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v2, "ckv:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v2, p0, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 367
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/umeng/analytics/d/f;->c:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 371
    :goto_1
    nop

    .line 372
    invoke-virtual {p0}, Lcom/umeng/analytics/d/f;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v2, "duration:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    iget-wide v2, p0, Lcom/umeng/analytics/d/f;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 376
    nop

    .line 378
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/d/f;->s()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v1, "acc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget v1, p0, Lcom/umeng/analytics/d/f;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    nop

    .line 384
    :cond_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
