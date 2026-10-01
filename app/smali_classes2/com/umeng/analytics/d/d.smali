.class public Lcom/umeng/analytics/d/d;
.super Ljava/lang/Object;
.source "ClientStats.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/d$c;,
        Lcom/umeng/analytics/d/d$d;,
        Lcom/umeng/analytics/d/d$a;,
        Lcom/umeng/analytics/d/d$b;,
        Lcom/umeng/analytics/d/d$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/d;",
        "Lcom/umeng/analytics/d/d$e;",
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
            "Lcom/umeng/analytics/d/d$e;",
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

.field private static final j:I = 0x0

.field private static final k:I = 0x1

.field private static final l:I = 0x2


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private m:B

.field private n:[Lcom/umeng/analytics/d/d$e;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "ClientStats"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/d;->e:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string/jumbo v1, "successful_requests"

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/d;->f:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v4, "failed_requests"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v2, v5}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/d;->g:Lcom/umeng/a/a/a/b/c;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v6, 0x3

    const-string v7, "last_request_spent_ms"

    invoke-direct {v0, v7, v2, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/d;->h:Lcom/umeng/a/a/a/b/c;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/d;->i:Ljava/util/Map;

    .line 40
    sget-object v0, Lcom/umeng/analytics/d/d;->i:Ljava/util/Map;

    const-class v6, Lcom/umeng/a/a/a/c/c;

    new-instance v8, Lcom/umeng/analytics/d/d$b;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/umeng/analytics/d/d$b;-><init>(Lcom/umeng/analytics/d/d$1;)V

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/umeng/analytics/d/d;->i:Ljava/util/Map;

    const-class v6, Lcom/umeng/a/a/a/c/d;

    new-instance v8, Lcom/umeng/analytics/d/d$d;

    invoke-direct {v8, v9}, Lcom/umeng/analytics/d/d$d;-><init>(Lcom/umeng/analytics/d/d$1;)V

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/util/EnumMap;

    const-class v6, Lcom/umeng/analytics/d/d$e;

    invoke-direct {v0, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 121
    sget-object v6, Lcom/umeng/analytics/d/d$e;->a:Lcom/umeng/analytics/d/d$e;

    new-instance v8, Lcom/umeng/a/a/a/a/b;

    new-instance v9, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v9, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v8, v1, v3, v9}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/umeng/analytics/d/d$e;->b:Lcom/umeng/analytics/d/d$e;

    new-instance v6, Lcom/umeng/a/a/a/a/b;

    new-instance v8, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v8, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v6, v4, v3, v8}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lcom/umeng/analytics/d/d$e;->c:Lcom/umeng/analytics/d/d$e;

    new-instance v3, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v3, v7, v5, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/d;->d:Ljava/util/Map;

    .line 128
    const-class v0, Lcom/umeng/analytics/d/d;

    sget-object v1, Lcom/umeng/analytics/d/d;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 129
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/d;->m:B

    .line 117
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/analytics/d/d$e;

    sget-object v2, Lcom/umeng/analytics/d/d$e;->c:Lcom/umeng/analytics/d/d$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/d;->n:[Lcom/umeng/analytics/d/d$e;

    .line 132
    iput v0, p0, Lcom/umeng/analytics/d/d;->a:I

    .line 134
    iput v0, p0, Lcom/umeng/analytics/d/d;->b:I

    .line 136
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/umeng/analytics/d/d;-><init>()V

    .line 143
    iput p1, p0, Lcom/umeng/analytics/d/d;->a:I

    .line 144
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/d;->a(Z)V

    .line 145
    iput p2, p0, Lcom/umeng/analytics/d/d;->b:I

    .line 146
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/d;->b(Z)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/d;)V
    .locals 3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/d;->m:B

    .line 117
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/analytics/d/d$e;

    sget-object v2, Lcom/umeng/analytics/d/d$e;->c:Lcom/umeng/analytics/d/d$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/d;->n:[Lcom/umeng/analytics/d/d$e;

    .line 153
    iget-byte v0, p1, Lcom/umeng/analytics/d/d;->m:B

    iput-byte v0, p0, Lcom/umeng/analytics/d/d;->m:B

    .line 154
    iget v0, p1, Lcom/umeng/analytics/d/d;->a:I

    iput v0, p0, Lcom/umeng/analytics/d/d;->a:I

    .line 155
    iget v0, p1, Lcom/umeng/analytics/d/d;->b:I

    iput v0, p0, Lcom/umeng/analytics/d/d;->b:I

    .line 156
    iget p1, p1, Lcom/umeng/analytics/d/d;->c:I

    iput p1, p0, Lcom/umeng/analytics/d/d;->c:I

    .line 157
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

    .line 294
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/d/d;->m:B

    .line 295
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/d;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    nop

    .line 299
    return-void

    .line 296
    :catch_0
    move-exception p1

    .line 297
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

    .line 285
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/d;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    nop

    .line 289
    return-void

    .line 286
    :catch_0
    move-exception p1

    .line 287
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic n()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/d;->e:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic o()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/d;->f:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic p()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/d;->g:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic q()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/d;->h:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/d/d;
    .locals 1

    .line 160
    new-instance v0, Lcom/umeng/analytics/d/d;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/d;-><init>(Lcom/umeng/analytics/d/d;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/analytics/d/d;
    .locals 0

    .line 178
    iput p1, p0, Lcom/umeng/analytics/d/d;->a:I

    .line 179
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/d;->a(Z)V

    .line 180
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 247
    sget-object v0, Lcom/umeng/analytics/d/d;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 248
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 193
    iget-byte v0, p0, Lcom/umeng/analytics/d/d;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/d;->m:B

    .line 194
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/d;->e(I)Lcom/umeng/analytics/d/d$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/d/d;->a:I

    .line 167
    iput v0, p0, Lcom/umeng/analytics/d/d;->b:I

    .line 169
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/d;->c(Z)V

    .line 170
    iput v0, p0, Lcom/umeng/analytics/d/d;->c:I

    .line 171
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 251
    sget-object v0, Lcom/umeng/analytics/d/d;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 252
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 216
    iget-byte v0, p0, Lcom/umeng/analytics/d/d;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/d;->m:B

    .line 217
    return-void
.end method

.method public c()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/umeng/analytics/d/d;->a:I

    return v0
.end method

.method public c(I)Lcom/umeng/analytics/d/d;
    .locals 0

    .line 201
    iput p1, p0, Lcom/umeng/analytics/d/d;->b:I

    .line 202
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/d;->b(Z)V

    .line 203
    return-object p0
.end method

.method public c(Z)V
    .locals 2

    .line 239
    iget-byte v0, p0, Lcom/umeng/analytics/d/d;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/d;->m:B

    .line 240
    return-void
.end method

.method public d(I)Lcom/umeng/analytics/d/d;
    .locals 0

    .line 224
    iput p1, p0, Lcom/umeng/analytics/d/d;->c:I

    .line 225
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/d;->c(Z)V

    .line 226
    return-object p0
.end method

.method public d()V
    .locals 2

    .line 184
    iget-byte v0, p0, Lcom/umeng/analytics/d/d;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/d;->m:B

    .line 185
    return-void
.end method

.method public e(I)Lcom/umeng/analytics/d/d$e;
    .locals 0

    .line 243
    invoke-static {p1}, Lcom/umeng/analytics/d/d$e;->a(I)Lcom/umeng/analytics/d/d$e;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 2

    .line 189
    iget-byte v0, p0, Lcom/umeng/analytics/d/d;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/umeng/analytics/d/d;->b:I

    return v0
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/d;->a()Lcom/umeng/analytics/d/d;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 207
    iget-byte v0, p0, Lcom/umeng/analytics/d/d;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/d;->m:B

    .line 208
    return-void
.end method

.method public i()Z
    .locals 2

    .line 212
    iget-byte v0, p0, Lcom/umeng/analytics/d/d;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/umeng/analytics/d/d;->c:I

    return v0
.end method

.method public k()V
    .locals 2

    .line 230
    iget-byte v0, p0, Lcom/umeng/analytics/d/d;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/d;->m:B

    .line 231
    return-void
.end method

.method public l()Z
    .locals 2

    .line 235
    iget-byte v0, p0, Lcom/umeng/analytics/d/d;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 281
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientStats("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    nop

    .line 259
    const-string/jumbo v1, "successful_requests:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget v1, p0, Lcom/umeng/analytics/d/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    nop

    .line 262
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v2, "failed_requests:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget v2, p0, Lcom/umeng/analytics/d/d;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    nop

    .line 266
    invoke-virtual {p0}, Lcom/umeng/analytics/d/d;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, "last_request_spent_ms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget v1, p0, Lcom/umeng/analytics/d/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    nop

    .line 272
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
