.class public Lcom/umeng/analytics/d/k;
.super Ljava/lang/Object;
.source "IdJournal.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/k$c;,
        Lcom/umeng/analytics/d/k$d;,
        Lcom/umeng/analytics/d/k$a;,
        Lcom/umeng/analytics/d/k$b;,
        Lcom/umeng/analytics/d/k$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/k;",
        "Lcom/umeng/analytics/d/k$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/analytics/d/k$e;",
            "Lcom/umeng/a/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/umeng/a/a/a/b/m;

.field private static final g:Lcom/umeng/a/a/a/b/c;

.field private static final h:Lcom/umeng/a/a/a/b/c;

.field private static final i:Lcom/umeng/a/a/a/b/c;

.field private static final j:Lcom/umeng/a/a/a/b/c;

.field private static final k:Ljava/util/Map;
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

.field private static final l:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field private m:B

.field private n:[Lcom/umeng/analytics/d/k$e;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "IdJournal"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/k;->f:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v1, "domain"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/k;->g:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v4, "old_id"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v2, v5}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/k;->h:Lcom/umeng/a/a/a/b/c;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v6, 0x3

    const-string v7, "new_id"

    invoke-direct {v0, v7, v2, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/k;->i:Lcom/umeng/a/a/a/b/c;

    .line 37
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v6, 0x4

    const-string/jumbo v8, "ts"

    const/16 v9, 0xa

    invoke-direct {v0, v8, v9, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/k;->j:Lcom/umeng/a/a/a/b/c;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/k;->k:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/umeng/analytics/d/k;->k:Ljava/util/Map;

    const-class v6, Lcom/umeng/a/a/a/c/c;

    new-instance v10, Lcom/umeng/analytics/d/k$b;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/umeng/analytics/d/k$b;-><init>(Lcom/umeng/analytics/d/k$1;)V

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/umeng/analytics/d/k;->k:Ljava/util/Map;

    const-class v6, Lcom/umeng/a/a/a/c/d;

    new-instance v10, Lcom/umeng/analytics/d/k$d;

    invoke-direct {v10, v11}, Lcom/umeng/analytics/d/k$d;-><init>(Lcom/umeng/analytics/d/k$1;)V

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v0, Ljava/util/EnumMap;

    const-class v6, Lcom/umeng/analytics/d/k$e;

    invoke-direct {v0, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 124
    sget-object v6, Lcom/umeng/analytics/d/k$e;->a:Lcom/umeng/analytics/d/k$e;

    new-instance v10, Lcom/umeng/a/a/a/a/b;

    new-instance v11, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v11, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v10, v1, v3, v11}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lcom/umeng/analytics/d/k$e;->b:Lcom/umeng/analytics/d/k$e;

    new-instance v6, Lcom/umeng/a/a/a/a/b;

    new-instance v10, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v10, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v6, v4, v5, v10}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lcom/umeng/analytics/d/k$e;->c:Lcom/umeng/analytics/d/k$e;

    new-instance v4, Lcom/umeng/a/a/a/a/b;

    new-instance v5, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v5, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v7, v3, v5}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lcom/umeng/analytics/d/k$e;->d:Lcom/umeng/analytics/d/k$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v9}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v8, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/k;->e:Ljava/util/Map;

    .line 133
    const-class v0, Lcom/umeng/analytics/d/k;

    sget-object v1, Lcom/umeng/analytics/d/k;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/k;->m:B

    .line 120
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/analytics/d/k$e;

    sget-object v2, Lcom/umeng/analytics/d/k$e;->b:Lcom/umeng/analytics/d/k$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/k;->n:[Lcom/umeng/analytics/d/k$e;

    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/k;)V
    .locals 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/k;->m:B

    .line 120
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/analytics/d/k$e;

    sget-object v2, Lcom/umeng/analytics/d/k$e;->b:Lcom/umeng/analytics/d/k$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/k;->n:[Lcom/umeng/analytics/d/k$e;

    .line 155
    iget-byte v0, p1, Lcom/umeng/analytics/d/k;->m:B

    iput-byte v0, p0, Lcom/umeng/analytics/d/k;->m:B

    .line 156
    invoke-virtual {p1}, Lcom/umeng/analytics/d/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p1, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/d/k;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p1, Lcom/umeng/analytics/d/k;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/k;->b:Ljava/lang/String;

    .line 162
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/analytics/d/k;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p1, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    .line 165
    :cond_2
    iget-wide v0, p1, Lcom/umeng/analytics/d/k;->d:J

    iput-wide v0, p0, Lcom/umeng/analytics/d/k;->d:J

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/umeng/analytics/d/k;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    .line 147
    iput-wide p3, p0, Lcom/umeng/analytics/d/k;->d:J

    .line 148
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/k;->d(Z)V

    .line 149
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

    .line 349
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/d/k;->m:B

    .line 350
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/k;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    nop

    .line 354
    return-void

    .line 351
    :catch_0
    move-exception p1

    .line 352
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

    .line 340
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/k;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    nop

    .line 344
    return-void

    .line 341
    :catch_0
    move-exception p1

    .line 342
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic q()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/k;->f:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic r()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/k;->g:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic s()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/k;->h:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic t()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/k;->i:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic u()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/k;->j:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/umeng/analytics/d/k$e;
    .locals 0

    .line 277
    invoke-static {p1}, Lcom/umeng/analytics/d/k$e;->a(I)Lcom/umeng/analytics/d/k$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/umeng/analytics/d/k;
    .locals 1

    .line 169
    new-instance v0, Lcom/umeng/analytics/d/k;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/k;-><init>(Lcom/umeng/analytics/d/k;)V

    return-object v0
.end method

.method public a(J)Lcom/umeng/analytics/d/k;
    .locals 0

    .line 258
    iput-wide p1, p0, Lcom/umeng/analytics/d/k;->d:J

    .line 259
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/k;->d(Z)V

    .line 260
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/d/k;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/umeng/analytics/d/k;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 282
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 200
    if-nez p1, :cond_0

    .line 201
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    .line 203
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/k;->a(I)Lcom/umeng/analytics/d/k$e;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/analytics/d/k;
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/umeng/analytics/d/k;->b:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public b()V
    .locals 2

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    .line 175
    iput-object v0, p0, Lcom/umeng/analytics/d/k;->b:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/k;->d(Z)V

    .line 178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/analytics/d/k;->d:J

    .line 179
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/umeng/analytics/d/k;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 286
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 224
    if-nez p1, :cond_0

    .line 225
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/k;->b:Ljava/lang/String;

    .line 227
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/umeng/analytics/d/k;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .line 248
    if-nez p1, :cond_0

    .line 249
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    .line 251
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 273
    iget-byte v0, p0, Lcom/umeng/analytics/d/k;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/k;->m:B

    .line 274
    return-void
.end method

.method public e()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/umeng/analytics/d/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/k;->a()Lcom/umeng/analytics/d/k;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/k;->b:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public i()Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/umeng/analytics/d/k;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public l()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()J
    .locals 2

    .line 254
    iget-wide v0, p0, Lcom/umeng/analytics/d/k;->d:J

    return-wide v0
.end method

.method public n()V
    .locals 2

    .line 264
    iget-byte v0, p0, Lcom/umeng/analytics/d/k;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/k;->m:B

    .line 265
    return-void
.end method

.method public o()Z
    .locals 2

    .line 269
    iget-byte v0, p0, Lcom/umeng/analytics/d/k;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public p()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 336
    return-void

    .line 332
    :cond_0
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'new_id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/k;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_1
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'domain\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/k;->toString()Ljava/lang/String;

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

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdJournal("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    nop

    .line 293
    const-string v1, "domain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v1, p0, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/d/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :goto_0
    nop

    .line 300
    invoke-virtual {p0}, Lcom/umeng/analytics/d/k;->i()Z

    move-result v1

    const-string v3, ", "

    if-eqz v1, :cond_2

    .line 301
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, "old_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v1, p0, Lcom/umeng/analytics/d/k;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/d/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :goto_1
    nop

    .line 310
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, "new_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-object v1, p0, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 313
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 315
    :cond_3
    iget-object v1, p0, Lcom/umeng/analytics/d/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :goto_2
    nop

    .line 318
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string/jumbo v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-wide v1, p0, Lcom/umeng/analytics/d/k;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 321
    nop

    .line 322
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
