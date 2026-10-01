.class public Lcom/umeng/analytics/d/v;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/v$c;,
        Lcom/umeng/analytics/d/v$d;,
        Lcom/umeng/analytics/d/v$a;,
        Lcom/umeng/analytics/d/v$b;,
        Lcom/umeng/analytics/d/v$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/v;",
        "Lcom/umeng/analytics/d/v$e;",
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
            "Lcom/umeng/analytics/d/v$e;",
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
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lcom/umeng/analytics/d/n;

.field private k:B

.field private l:[Lcom/umeng/analytics/d/v$e;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "Response"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/v;->e:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v1, "resp_code"

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/v;->f:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v4, "msg"

    const/16 v5, 0xb

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/v;->g:Lcom/umeng/a/a/a/b/c;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v7, 0x3

    const-string v8, "imprint"

    const/16 v9, 0xc

    invoke-direct {v0, v8, v9, v7}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/v;->h:Lcom/umeng/a/a/a/b/c;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/v;->i:Ljava/util/Map;

    .line 40
    sget-object v0, Lcom/umeng/analytics/d/v;->i:Ljava/util/Map;

    const-class v7, Lcom/umeng/a/a/a/c/c;

    new-instance v10, Lcom/umeng/analytics/d/v$b;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/umeng/analytics/d/v$b;-><init>(Lcom/umeng/analytics/d/v$1;)V

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/umeng/analytics/d/v;->i:Ljava/util/Map;

    const-class v7, Lcom/umeng/a/a/a/c/d;

    new-instance v10, Lcom/umeng/analytics/d/v$d;

    invoke-direct {v10, v11}, Lcom/umeng/analytics/d/v$d;-><init>(Lcom/umeng/analytics/d/v$1;)V

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/EnumMap;

    const-class v7, Lcom/umeng/analytics/d/v$e;

    invoke-direct {v0, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 119
    sget-object v7, Lcom/umeng/analytics/d/v$e;->a:Lcom/umeng/analytics/d/v$e;

    new-instance v10, Lcom/umeng/a/a/a/a/b;

    new-instance v11, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v11, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v10, v1, v3, v11}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/umeng/analytics/d/v$e;->b:Lcom/umeng/analytics/d/v$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v3, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v3, v5}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v4, v6, v3}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/umeng/analytics/d/v$e;->c:Lcom/umeng/analytics/d/v$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v3, Lcom/umeng/a/a/a/a/g;

    const-class v4, Lcom/umeng/analytics/d/n;

    invoke-direct {v3, v9, v4}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v8, v6, v3}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/v;->d:Ljava/util/Map;

    .line 126
    const-class v0, Lcom/umeng/analytics/d/v;

    sget-object v1, Lcom/umeng/analytics/d/v;->d:Ljava/util/Map;

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

    iput-byte v0, p0, Lcom/umeng/analytics/d/v;->k:B

    .line 115
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/umeng/analytics/d/v$e;

    sget-object v2, Lcom/umeng/analytics/d/v$e;->b:Lcom/umeng/analytics/d/v$e;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/umeng/analytics/d/v$e;->c:Lcom/umeng/analytics/d/v$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/v;->l:[Lcom/umeng/analytics/d/v$e;

    .line 130
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/umeng/analytics/d/v;-><init>()V

    .line 136
    iput p1, p0, Lcom/umeng/analytics/d/v;->a:I

    .line 137
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/v;->a(Z)V

    .line 138
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/v;)V
    .locals 3

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/v;->k:B

    .line 115
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/umeng/analytics/d/v$e;

    sget-object v2, Lcom/umeng/analytics/d/v$e;->b:Lcom/umeng/analytics/d/v$e;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/umeng/analytics/d/v$e;->c:Lcom/umeng/analytics/d/v$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/v;->l:[Lcom/umeng/analytics/d/v$e;

    .line 144
    iget-byte v0, p1, Lcom/umeng/analytics/d/v;->k:B

    iput-byte v0, p0, Lcom/umeng/analytics/d/v;->k:B

    .line 145
    iget v0, p1, Lcom/umeng/analytics/d/v;->a:I

    iput v0, p0, Lcom/umeng/analytics/d/v;->a:I

    .line 146
    invoke-virtual {p1}, Lcom/umeng/analytics/d/v;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p1, Lcom/umeng/analytics/d/v;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/v;->b:Ljava/lang/String;

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/d/v;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    new-instance v0, Lcom/umeng/analytics/d/n;

    iget-object p1, p1, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/d/n;-><init>(Lcom/umeng/analytics/d/n;)V

    iput-object v0, p0, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    .line 152
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
    iput-byte v0, p0, Lcom/umeng/analytics/d/v;->k:B

    .line 302
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/v;->a(Lcom/umeng/a/a/a/b/h;)V
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

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/v;->b(Lcom/umeng/a/a/a/b/h;)V
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
    sget-object v0, Lcom/umeng/analytics/d/v;->e:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic o()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/v;->f:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic p()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/v;->g:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic q()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/v;->h:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/d/v;
    .locals 1

    .line 155
    new-instance v0, Lcom/umeng/analytics/d/v;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/v;-><init>(Lcom/umeng/analytics/d/v;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/analytics/d/v;
    .locals 0

    .line 171
    iput p1, p0, Lcom/umeng/analytics/d/v;->a:I

    .line 172
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/v;->a(Z)V

    .line 173
    return-object p0
.end method

.method public a(Lcom/umeng/analytics/d/n;)Lcom/umeng/analytics/d/v;
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    .line 219
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/d/v;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/umeng/analytics/d/v;->b:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 242
    sget-object v0, Lcom/umeng/analytics/d/v;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 243
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 186
    iget-byte v0, p0, Lcom/umeng/analytics/d/v;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/v;->k:B

    .line 187
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/v;->c(I)Lcom/umeng/analytics/d/v$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/v;->a(Z)V

    .line 161
    iput v0, p0, Lcom/umeng/analytics/d/v;->a:I

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/v;->b:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    .line 164
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/umeng/analytics/d/v;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 247
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 208
    if-nez p1, :cond_0

    .line 209
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/v;->b:Ljava/lang/String;

    .line 211
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/umeng/analytics/d/v;->a:I

    return v0
.end method

.method public c(I)Lcom/umeng/analytics/d/v$e;
    .locals 0

    .line 238
    invoke-static {p1}, Lcom/umeng/analytics/d/v$e;->a(I)Lcom/umeng/analytics/d/v$e;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)V
    .locals 0

    .line 232
    if-nez p1, :cond_0

    .line 233
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    .line 235
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 177
    iget-byte v0, p0, Lcom/umeng/analytics/d/v;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/v;->k:B

    .line 178
    return-void
.end method

.method public e()Z
    .locals 2

    .line 182
    iget-byte v0, p0, Lcom/umeng/analytics/d/v;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/umeng/analytics/d/v;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/v;->a()Lcom/umeng/analytics/d/v;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/v;->b:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public i()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/umeng/analytics/d/v;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Lcom/umeng/analytics/d/n;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    .line 224
    return-void
.end method

.method public l()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/n;->n()V

    .line 288
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    nop

    .line 254
    const-string v1, "resp_code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget v1, p0, Lcom/umeng/analytics/d/v;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    nop

    .line 257
    invoke-virtual {p0}, Lcom/umeng/analytics/d/v;->i()Z

    move-result v1

    const-string v2, "null"

    const-string v3, ", "

    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v1, "msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v1, p0, Lcom/umeng/analytics/d/v;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/d/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :goto_0
    nop

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/analytics/d/v;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, "imprint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v1, p0, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    if-nez v1, :cond_2

    .line 271
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/umeng/analytics/d/v;->c:Lcom/umeng/analytics/d/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    :goto_1
    nop

    .line 277
    :cond_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
