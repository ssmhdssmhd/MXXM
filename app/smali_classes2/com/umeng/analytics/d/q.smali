.class public Lcom/umeng/analytics/d/q;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/q$c;,
        Lcom/umeng/analytics/d/q$d;,
        Lcom/umeng/analytics/d/q$a;,
        Lcom/umeng/analytics/d/q$b;,
        Lcom/umeng/analytics/d/q$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/q;",
        "Lcom/umeng/analytics/d/q$e;",
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
            "Lcom/umeng/analytics/d/q$e;",
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
.field public a:D

.field public b:D

.field public c:J

.field private m:B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "Location"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/q;->e:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v1, "lat"

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/q;->f:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v4, 0x2

    const-string v5, "lng"

    invoke-direct {v0, v5, v2, v4}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/q;->g:Lcom/umeng/a/a/a/b/c;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v4, 0x3

    const-string/jumbo v6, "ts"

    const/16 v7, 0xa

    invoke-direct {v0, v6, v7, v4}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/q;->h:Lcom/umeng/a/a/a/b/c;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/q;->i:Ljava/util/Map;

    .line 40
    sget-object v0, Lcom/umeng/analytics/d/q;->i:Ljava/util/Map;

    const-class v4, Lcom/umeng/a/a/a/c/c;

    new-instance v8, Lcom/umeng/analytics/d/q$b;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/umeng/analytics/d/q$b;-><init>(Lcom/umeng/analytics/d/q$1;)V

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/umeng/analytics/d/q;->i:Ljava/util/Map;

    const-class v4, Lcom/umeng/a/a/a/c/d;

    new-instance v8, Lcom/umeng/analytics/d/q$d;

    invoke-direct {v8, v9}, Lcom/umeng/analytics/d/q$d;-><init>(Lcom/umeng/analytics/d/q$1;)V

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/EnumMap;

    const-class v4, Lcom/umeng/analytics/d/q$e;

    invoke-direct {v0, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 120
    sget-object v4, Lcom/umeng/analytics/d/q$e;->a:Lcom/umeng/analytics/d/q$e;

    new-instance v8, Lcom/umeng/a/a/a/a/b;

    new-instance v9, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v9, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v8, v1, v3, v9}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lcom/umeng/analytics/d/q$e;->b:Lcom/umeng/analytics/d/q$e;

    new-instance v4, Lcom/umeng/a/a/a/a/b;

    new-instance v8, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v8, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v5, v3, v8}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lcom/umeng/analytics/d/q$e;->c:Lcom/umeng/analytics/d/q$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v7}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v6, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/q;->d:Ljava/util/Map;

    .line 127
    const-class v0, Lcom/umeng/analytics/d/q;

    sget-object v1, Lcom/umeng/analytics/d/q;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/q;->m:B

    .line 131
    return-void
.end method

.method public constructor <init>(DDJ)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/umeng/analytics/d/q;-><init>()V

    .line 139
    iput-wide p1, p0, Lcom/umeng/analytics/d/q;->a:D

    .line 140
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/q;->a(Z)V

    .line 141
    iput-wide p3, p0, Lcom/umeng/analytics/d/q;->b:D

    .line 142
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/q;->b(Z)V

    .line 143
    iput-wide p5, p0, Lcom/umeng/analytics/d/q;->c:J

    .line 144
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/q;->c(Z)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/q;)V
    .locals 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/q;->m:B

    .line 151
    iget-byte v0, p1, Lcom/umeng/analytics/d/q;->m:B

    iput-byte v0, p0, Lcom/umeng/analytics/d/q;->m:B

    .line 152
    iget-wide v0, p1, Lcom/umeng/analytics/d/q;->a:D

    iput-wide v0, p0, Lcom/umeng/analytics/d/q;->a:D

    .line 153
    iget-wide v0, p1, Lcom/umeng/analytics/d/q;->b:D

    iput-wide v0, p0, Lcom/umeng/analytics/d/q;->b:D

    .line 154
    iget-wide v0, p1, Lcom/umeng/analytics/d/q;->c:J

    iput-wide v0, p0, Lcom/umeng/analytics/d/q;->c:J

    .line 155
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

    .line 291
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/d/q;->m:B

    .line 292
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/q;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    nop

    .line 296
    return-void

    .line 293
    :catch_0
    move-exception p1

    .line 294
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

    .line 282
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/q;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    nop

    .line 286
    return-void

    .line 283
    :catch_0
    move-exception p1

    .line 284
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic n()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/q;->e:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic o()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/q;->f:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic p()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/q;->g:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic q()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/q;->h:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/umeng/analytics/d/q$e;
    .locals 0

    .line 241
    invoke-static {p1}, Lcom/umeng/analytics/d/q$e;->a(I)Lcom/umeng/analytics/d/q$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/umeng/analytics/d/q;
    .locals 1

    .line 158
    new-instance v0, Lcom/umeng/analytics/d/q;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/q;-><init>(Lcom/umeng/analytics/d/q;)V

    return-object v0
.end method

.method public a(D)Lcom/umeng/analytics/d/q;
    .locals 0

    .line 176
    iput-wide p1, p0, Lcom/umeng/analytics/d/q;->a:D

    .line 177
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/q;->a(Z)V

    .line 178
    return-object p0
.end method

.method public a(J)Lcom/umeng/analytics/d/q;
    .locals 0

    .line 222
    iput-wide p1, p0, Lcom/umeng/analytics/d/q;->c:J

    .line 223
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/q;->c(Z)V

    .line 224
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/umeng/analytics/d/q;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 246
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 191
    iget-byte v0, p0, Lcom/umeng/analytics/d/q;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/q;->m:B

    .line 192
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/q;->a(I)Lcom/umeng/analytics/d/q$e;

    move-result-object p1

    return-object p1
.end method

.method public b(D)Lcom/umeng/analytics/d/q;
    .locals 0

    .line 199
    iput-wide p1, p0, Lcom/umeng/analytics/d/q;->b:D

    .line 200
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/q;->b(Z)V

    .line 201
    return-object p0
.end method

.method public b()V
    .locals 3

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/q;->a(Z)V

    .line 164
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/umeng/analytics/d/q;->a:D

    .line 165
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/q;->b(Z)V

    .line 166
    iput-wide v1, p0, Lcom/umeng/analytics/d/q;->b:D

    .line 167
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/q;->c(Z)V

    .line 168
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/analytics/d/q;->c:J

    .line 169
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/umeng/analytics/d/q;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 250
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 214
    iget-byte v0, p0, Lcom/umeng/analytics/d/q;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/q;->m:B

    .line 215
    return-void
.end method

.method public c()D
    .locals 2

    .line 172
    iget-wide v0, p0, Lcom/umeng/analytics/d/q;->a:D

    return-wide v0
.end method

.method public c(Z)V
    .locals 2

    .line 237
    iget-byte v0, p0, Lcom/umeng/analytics/d/q;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/q;->m:B

    .line 238
    return-void
.end method

.method public d()V
    .locals 2

    .line 182
    iget-byte v0, p0, Lcom/umeng/analytics/d/q;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/q;->m:B

    .line 183
    return-void
.end method

.method public e()Z
    .locals 2

    .line 187
    iget-byte v0, p0, Lcom/umeng/analytics/d/q;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()D
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/umeng/analytics/d/q;->b:D

    return-wide v0
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/q;->a()Lcom/umeng/analytics/d/q;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 205
    iget-byte v0, p0, Lcom/umeng/analytics/d/q;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/q;->m:B

    .line 206
    return-void
.end method

.method public i()Z
    .locals 2

    .line 210
    iget-byte v0, p0, Lcom/umeng/analytics/d/q;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()J
    .locals 2

    .line 218
    iget-wide v0, p0, Lcom/umeng/analytics/d/q;->c:J

    return-wide v0
.end method

.method public k()V
    .locals 2

    .line 228
    iget-byte v0, p0, Lcom/umeng/analytics/d/q;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/q;->m:B

    .line 229
    return-void
.end method

.method public l()Z
    .locals 2

    .line 233
    iget-byte v0, p0, Lcom/umeng/analytics/d/q;->m:B

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

    .line 278
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    nop

    .line 257
    const-string v1, "lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-wide v1, p0, Lcom/umeng/analytics/d/q;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 259
    nop

    .line 260
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v2, "lng:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-wide v2, p0, Lcom/umeng/analytics/d/q;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 263
    nop

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string/jumbo v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-wide v1, p0, Lcom/umeng/analytics/d/q;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 267
    nop

    .line 268
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
