.class public Lcom/umeng/analytics/d/g;
.super Ljava/lang/Object;
.source "Error.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/g$c;,
        Lcom/umeng/analytics/d/g$d;,
        Lcom/umeng/analytics/d/g$a;,
        Lcom/umeng/analytics/d/g$b;,
        Lcom/umeng/analytics/d/g$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/g;",
        "Lcom/umeng/analytics/d/g$e;",
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
            "Lcom/umeng/analytics/d/g$e;",
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

.field private static final j:I


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Lcom/umeng/analytics/d/h;

.field private k:B

.field private l:[Lcom/umeng/analytics/d/g$e;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "Error"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/g;->e:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string/jumbo v1, "ts"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/g;->f:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v4, "context"

    const/16 v5, 0xb

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/g;->g:Lcom/umeng/a/a/a/b/c;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/16 v7, 0x8

    const/4 v8, 0x3

    const-string/jumbo v9, "source"

    invoke-direct {v0, v9, v7, v8}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/g;->h:Lcom/umeng/a/a/a/b/c;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/g;->i:Ljava/util/Map;

    .line 40
    sget-object v0, Lcom/umeng/analytics/d/g;->i:Ljava/util/Map;

    const-class v7, Lcom/umeng/a/a/a/c/c;

    new-instance v8, Lcom/umeng/analytics/d/g$b;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/umeng/analytics/d/g$b;-><init>(Lcom/umeng/analytics/d/g$1;)V

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/umeng/analytics/d/g;->i:Ljava/util/Map;

    const-class v7, Lcom/umeng/a/a/a/c/d;

    new-instance v8, Lcom/umeng/analytics/d/g$d;

    invoke-direct {v8, v10}, Lcom/umeng/analytics/d/g$d;-><init>(Lcom/umeng/analytics/d/g$1;)V

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/util/EnumMap;

    const-class v7, Lcom/umeng/analytics/d/g$e;

    invoke-direct {v0, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 127
    sget-object v7, Lcom/umeng/analytics/d/g$e;->a:Lcom/umeng/analytics/d/g$e;

    new-instance v8, Lcom/umeng/a/a/a/a/b;

    new-instance v10, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v10, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v8, v1, v3, v10}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lcom/umeng/analytics/d/g$e;->b:Lcom/umeng/analytics/d/g$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v7, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v7, v5}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v4, v3, v7}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lcom/umeng/analytics/d/g$e;->c:Lcom/umeng/analytics/d/g$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v3, Lcom/umeng/a/a/a/a/a;

    const/16 v4, 0x10

    const-class v5, Lcom/umeng/analytics/d/h;

    invoke-direct {v3, v4, v5}, Lcom/umeng/a/a/a/a/a;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v9, v6, v3}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/g;->d:Ljava/util/Map;

    .line 134
    const-class v0, Lcom/umeng/analytics/d/g;

    sget-object v1, Lcom/umeng/analytics/d/g;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/g;->k:B

    .line 123
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/analytics/d/g$e;

    sget-object v2, Lcom/umeng/analytics/d/g$e;->c:Lcom/umeng/analytics/d/g$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/g;->l:[Lcom/umeng/analytics/d/g$e;

    .line 138
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/umeng/analytics/d/g;-><init>()V

    .line 145
    iput-wide p1, p0, Lcom/umeng/analytics/d/g;->a:J

    .line 146
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/g;->b(Z)V

    .line 147
    iput-object p3, p0, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/g;)V
    .locals 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/g;->k:B

    .line 123
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/analytics/d/g$e;

    sget-object v2, Lcom/umeng/analytics/d/g$e;->c:Lcom/umeng/analytics/d/g$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/g;->l:[Lcom/umeng/analytics/d/g$e;

    .line 154
    iget-byte v0, p1, Lcom/umeng/analytics/d/g;->k:B

    iput-byte v0, p0, Lcom/umeng/analytics/d/g;->k:B

    .line 155
    iget-wide v0, p1, Lcom/umeng/analytics/d/g;->a:J

    iput-wide v0, p0, Lcom/umeng/analytics/d/g;->a:J

    .line 156
    invoke-virtual {p1}, Lcom/umeng/analytics/d/g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p1, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/d/g;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object p1, p1, Lcom/umeng/analytics/d/g;->c:Lcom/umeng/analytics/d/h;

    iput-object p1, p0, Lcom/umeng/analytics/d/g;->c:Lcom/umeng/analytics/d/h;

    .line 162
    :cond_1
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

    .line 317
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/d/g;->k:B

    .line 318
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/g;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    nop

    .line 322
    return-void

    .line 319
    :catch_0
    move-exception p1

    .line 320
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

    .line 308
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/g;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    nop

    .line 312
    return-void

    .line 309
    :catch_0
    move-exception p1

    .line 310
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic n()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/g;->e:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic o()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/g;->f:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic p()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/g;->g:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic q()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/g;->h:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/umeng/analytics/d/g$e;
    .locals 0

    .line 256
    invoke-static {p1}, Lcom/umeng/analytics/d/g$e;->a(I)Lcom/umeng/analytics/d/g$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/umeng/analytics/d/g;
    .locals 1

    .line 165
    new-instance v0, Lcom/umeng/analytics/d/g;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/g;-><init>(Lcom/umeng/analytics/d/g;)V

    return-object v0
.end method

.method public a(J)Lcom/umeng/analytics/d/g;
    .locals 0

    .line 181
    iput-wide p1, p0, Lcom/umeng/analytics/d/g;->a:J

    .line 182
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/g;->b(Z)V

    .line 183
    return-object p0
.end method

.method public a(Lcom/umeng/analytics/d/h;)Lcom/umeng/analytics/d/g;
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/umeng/analytics/d/g;->c:Lcom/umeng/analytics/d/h;

    .line 237
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/d/g;
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 260
    sget-object v0, Lcom/umeng/analytics/d/g;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 261
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/g;->a(I)Lcom/umeng/analytics/d/g$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/g;->b(Z)V

    .line 171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/analytics/d/g;->a:J

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    .line 173
    iput-object v0, p0, Lcom/umeng/analytics/d/g;->c:Lcom/umeng/analytics/d/h;

    .line 174
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/umeng/analytics/d/g;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 265
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 196
    iget-byte v0, p0, Lcom/umeng/analytics/d/g;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/g;->k:B

    .line 197
    return-void
.end method

.method public c()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/umeng/analytics/d/g;->a:J

    return-wide v0
.end method

.method public c(Z)V
    .locals 0

    .line 218
    if-nez p1, :cond_0

    .line 219
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    .line 221
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 187
    iget-byte v0, p0, Lcom/umeng/analytics/d/g;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/g;->k:B

    .line 188
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 250
    if-nez p1, :cond_0

    .line 251
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/g;->c:Lcom/umeng/analytics/d/h;

    .line 253
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 2

    .line 192
    iget-byte v0, p0, Lcom/umeng/analytics/d/g;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/g;->a()Lcom/umeng/analytics/d/g;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public i()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Lcom/umeng/analytics/d/h;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/umeng/analytics/d/g;->c:Lcom/umeng/analytics/d/h;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/g;->c:Lcom/umeng/analytics/d/h;

    .line 242
    return-void
.end method

.method public l()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/umeng/analytics/d/g;->c:Lcom/umeng/analytics/d/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 304
    return-void

    .line 301
    :cond_0
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'context\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/g;->toString()Ljava/lang/String;

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

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    nop

    .line 272
    const-string/jumbo v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-wide v1, p0, Lcom/umeng/analytics/d/g;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 274
    nop

    .line 275
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v2, "context:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-object v2, p0, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    const-string v3, "null"

    if-nez v2, :cond_0

    .line 278
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/umeng/analytics/d/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :goto_0
    nop

    .line 283
    invoke-virtual {p0}, Lcom/umeng/analytics/d/g;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string/jumbo v1, "source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v1, p0, Lcom/umeng/analytics/d/g;->c:Lcom/umeng/analytics/d/h;

    if-nez v1, :cond_1

    .line 287
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/d/g;->c:Lcom/umeng/analytics/d/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    :goto_1
    nop

    .line 293
    :cond_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
