.class public Lcom/umeng/analytics/d/o;
.super Ljava/lang/Object;
.source "ImprintValue.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/o$c;,
        Lcom/umeng/analytics/d/o$d;,
        Lcom/umeng/analytics/d/o$a;,
        Lcom/umeng/analytics/d/o$b;,
        Lcom/umeng/analytics/d/o$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/o;",
        "Lcom/umeng/analytics/d/o$e;",
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
            "Lcom/umeng/analytics/d/o$e;",
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
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field private k:B

.field private l:[Lcom/umeng/analytics/d/o$e;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "ImprintValue"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/o;->e:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string/jumbo v1, "value"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/o;->f:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string/jumbo v4, "ts"

    const/16 v5, 0xa

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/o;->g:Lcom/umeng/a/a/a/b/c;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v7, 0x3

    const-string v8, "guid"

    invoke-direct {v0, v8, v2, v7}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/o;->h:Lcom/umeng/a/a/a/b/c;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/o;->i:Ljava/util/Map;

    .line 40
    sget-object v0, Lcom/umeng/analytics/d/o;->i:Ljava/util/Map;

    const-class v7, Lcom/umeng/a/a/a/c/c;

    new-instance v9, Lcom/umeng/analytics/d/o$b;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/umeng/analytics/d/o$b;-><init>(Lcom/umeng/analytics/d/o$1;)V

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/umeng/analytics/d/o;->i:Ljava/util/Map;

    const-class v7, Lcom/umeng/a/a/a/c/d;

    new-instance v9, Lcom/umeng/analytics/d/o$d;

    invoke-direct {v9, v10}, Lcom/umeng/analytics/d/o$d;-><init>(Lcom/umeng/analytics/d/o$1;)V

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/EnumMap;

    const-class v7, Lcom/umeng/analytics/d/o$e;

    invoke-direct {v0, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 119
    sget-object v7, Lcom/umeng/analytics/d/o$e;->a:Lcom/umeng/analytics/d/o$e;

    new-instance v9, Lcom/umeng/a/a/a/a/b;

    new-instance v10, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v10, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v9, v1, v6, v10}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/umeng/analytics/d/o$e;->b:Lcom/umeng/analytics/d/o$e;

    new-instance v6, Lcom/umeng/a/a/a/a/b;

    new-instance v7, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v7, v5}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v6, v4, v3, v7}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/umeng/analytics/d/o$e;->c:Lcom/umeng/analytics/d/o$e;

    new-instance v4, Lcom/umeng/a/a/a/a/b;

    new-instance v5, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v5, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v8, v3, v5}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/o;->d:Ljava/util/Map;

    .line 126
    const-class v0, Lcom/umeng/analytics/d/o;

    sget-object v1, Lcom/umeng/analytics/d/o;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 127
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/o;->k:B

    .line 115
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/analytics/d/o$e;

    sget-object v2, Lcom/umeng/analytics/d/o$e;->a:Lcom/umeng/analytics/d/o$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/o;->l:[Lcom/umeng/analytics/d/o$e;

    .line 130
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/umeng/analytics/d/o;-><init>()V

    .line 137
    iput-wide p1, p0, Lcom/umeng/analytics/d/o;->b:J

    .line 138
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/o;->b(Z)V

    .line 139
    iput-object p3, p0, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/o;)V
    .locals 3

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/o;->k:B

    .line 115
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/analytics/d/o$e;

    sget-object v2, Lcom/umeng/analytics/d/o$e;->a:Lcom/umeng/analytics/d/o$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/o;->l:[Lcom/umeng/analytics/d/o$e;

    .line 146
    iget-byte v0, p1, Lcom/umeng/analytics/d/o;->k:B

    iput-byte v0, p0, Lcom/umeng/analytics/d/o;->k:B

    .line 147
    invoke-virtual {p1}, Lcom/umeng/analytics/d/o;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p1, Lcom/umeng/analytics/d/o;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/o;->a:Ljava/lang/String;

    .line 150
    :cond_0
    iget-wide v0, p1, Lcom/umeng/analytics/d/o;->b:J

    iput-wide v0, p0, Lcom/umeng/analytics/d/o;->b:J

    .line 151
    invoke-virtual {p1}, Lcom/umeng/analytics/d/o;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object p1, p1, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

    .line 154
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

    .line 301
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/d/o;->k:B

    .line 302
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/o;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    nop

    .line 306
    return-void

    .line 303
    :catch_0
    move-exception p1

    .line 304
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

    .line 292
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/o;->b(Lcom/umeng/a/a/a/b/h;)V
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

.method static synthetic n()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/o;->e:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic o()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/o;->f:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic p()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/o;->g:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic q()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/o;->h:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/umeng/analytics/d/o$e;
    .locals 0

    .line 240
    invoke-static {p1}, Lcom/umeng/analytics/d/o$e;->a(I)Lcom/umeng/analytics/d/o$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/umeng/analytics/d/o;
    .locals 1

    .line 157
    new-instance v0, Lcom/umeng/analytics/d/o;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/o;-><init>(Lcom/umeng/analytics/d/o;)V

    return-object v0
.end method

.method public a(J)Lcom/umeng/analytics/d/o;
    .locals 0

    .line 197
    iput-wide p1, p0, Lcom/umeng/analytics/d/o;->b:J

    .line 198
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/o;->b(Z)V

    .line 199
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/d/o;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/umeng/analytics/d/o;->a:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/umeng/analytics/d/o;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 245
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 187
    if-nez p1, :cond_0

    .line 188
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/o;->a:Ljava/lang/String;

    .line 190
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/o;->a(I)Lcom/umeng/analytics/d/o$e;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/analytics/d/o;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

    .line 221
    return-object p0
.end method

.method public b()V
    .locals 3

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/o;->a:Ljava/lang/String;

    .line 163
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/d/o;->b(Z)V

    .line 164
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/umeng/analytics/d/o;->b:J

    .line 165
    iput-object v0, p0, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 248
    sget-object v0, Lcom/umeng/analytics/d/o;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 249
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 212
    iget-byte v0, p0, Lcom/umeng/analytics/d/o;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/o;->k:B

    .line 213
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/umeng/analytics/d/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .line 234
    if-nez p1, :cond_0

    .line 235
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

    .line 237
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/o;->a:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public e()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/umeng/analytics/d/o;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()J
    .locals 2

    .line 193
    iget-wide v0, p0, Lcom/umeng/analytics/d/o;->b:J

    return-wide v0
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/o;->a()Lcom/umeng/analytics/d/o;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 203
    iget-byte v0, p0, Lcom/umeng/analytics/d/o;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/o;->k:B

    .line 204
    return-void
.end method

.method public i()Z
    .locals 2

    .line 208
    iget-byte v0, p0, Lcom/umeng/analytics/d/o;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public l()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

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

    .line 284
    iget-object v0, p0, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 288
    return-void

    .line 285
    :cond_0
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImprintValue("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    nop

    .line 256
    invoke-virtual {p0}, Lcom/umeng/analytics/d/o;->e()Z

    move-result v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    .line 257
    const-string/jumbo v1, "value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-object v1, p0, Lcom/umeng/analytics/d/o;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/d/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 256
    :cond_1
    const/4 v1, 0x1

    .line 265
    :goto_1
    const-string v3, ", "

    if-nez v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_2
    const-string/jumbo v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-wide v4, p0, Lcom/umeng/analytics/d/o;->b:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 268
    nop

    .line 269
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, "guid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v1, p0, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 272
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/umeng/analytics/d/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :goto_2
    nop

    .line 277
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
