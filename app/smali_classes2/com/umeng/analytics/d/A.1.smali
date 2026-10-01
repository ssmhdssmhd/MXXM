.class public Lcom/umeng/analytics/d/A;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/A$c;,
        Lcom/umeng/analytics/d/A$d;,
        Lcom/umeng/analytics/d/A$a;,
        Lcom/umeng/analytics/d/A$b;,
        Lcom/umeng/analytics/d/A$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/A;",
        "Lcom/umeng/analytics/d/A$e;",
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
            "Lcom/umeng/analytics/d/A$e;",
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
.field public a:Lcom/umeng/analytics/d/j;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field private m:B

.field private n:[Lcom/umeng/analytics/d/A$e;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "UserInfo"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/A;->f:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v1, 0x1

    const-string v2, "gender"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/A;->g:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v1, "age"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/A;->h:Lcom/umeng/a/a/a/b/c;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v5, 0x3

    const-string v6, "id"

    const/16 v7, 0xb

    invoke-direct {v0, v6, v7, v5}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/A;->i:Lcom/umeng/a/a/a/b/c;

    .line 37
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v5, 0x4

    const-string/jumbo v8, "source"

    invoke-direct {v0, v8, v7, v5}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/A;->j:Lcom/umeng/a/a/a/b/c;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/A;->k:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/umeng/analytics/d/A;->k:Ljava/util/Map;

    const-class v5, Lcom/umeng/a/a/a/c/c;

    new-instance v9, Lcom/umeng/analytics/d/A$b;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/umeng/analytics/d/A$b;-><init>(Lcom/umeng/analytics/d/A$1;)V

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/umeng/analytics/d/A;->k:Ljava/util/Map;

    const-class v5, Lcom/umeng/a/a/a/c/d;

    new-instance v9, Lcom/umeng/analytics/d/A$d;

    invoke-direct {v9, v10}, Lcom/umeng/analytics/d/A$d;-><init>(Lcom/umeng/analytics/d/A$1;)V

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/util/EnumMap;

    const-class v5, Lcom/umeng/analytics/d/A$e;

    invoke-direct {v0, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 132
    sget-object v5, Lcom/umeng/analytics/d/A$e;->a:Lcom/umeng/analytics/d/A$e;

    new-instance v9, Lcom/umeng/a/a/a/a/b;

    new-instance v10, Lcom/umeng/a/a/a/a/a;

    const/16 v11, 0x10

    const-class v12, Lcom/umeng/analytics/d/j;

    invoke-direct {v10, v11, v12}, Lcom/umeng/a/a/a/a/a;-><init>(BLjava/lang/Class;)V

    invoke-direct {v9, v2, v4, v10}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v2, Lcom/umeng/analytics/d/A$e;->b:Lcom/umeng/analytics/d/A$e;

    new-instance v5, Lcom/umeng/a/a/a/a/b;

    new-instance v9, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v9, v3}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v5, v1, v4, v9}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lcom/umeng/analytics/d/A$e;->c:Lcom/umeng/analytics/d/A$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v3, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v3, v7}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v6, v4, v3}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lcom/umeng/analytics/d/A$e;->d:Lcom/umeng/analytics/d/A$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v3, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v3, v7}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v8, v4, v3}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/A;->e:Ljava/util/Map;

    .line 141
    const-class v0, Lcom/umeng/analytics/d/A;

    sget-object v1, Lcom/umeng/analytics/d/A;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 142
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/A;->m:B

    .line 128
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/umeng/analytics/d/A$e;

    sget-object v2, Lcom/umeng/analytics/d/A$e;->a:Lcom/umeng/analytics/d/A$e;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/umeng/analytics/d/A$e;->b:Lcom/umeng/analytics/d/A$e;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Lcom/umeng/analytics/d/A$e;->c:Lcom/umeng/analytics/d/A$e;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Lcom/umeng/analytics/d/A$e;->d:Lcom/umeng/analytics/d/A$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/A;->n:[Lcom/umeng/analytics/d/A$e;

    .line 145
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/A;)V
    .locals 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/A;->m:B

    .line 128
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/umeng/analytics/d/A$e;

    sget-object v2, Lcom/umeng/analytics/d/A$e;->a:Lcom/umeng/analytics/d/A$e;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/umeng/analytics/d/A$e;->b:Lcom/umeng/analytics/d/A$e;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Lcom/umeng/analytics/d/A$e;->c:Lcom/umeng/analytics/d/A$e;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Lcom/umeng/analytics/d/A$e;->d:Lcom/umeng/analytics/d/A$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/A;->n:[Lcom/umeng/analytics/d/A$e;

    .line 151
    iget-byte v0, p1, Lcom/umeng/analytics/d/A;->m:B

    iput-byte v0, p0, Lcom/umeng/analytics/d/A;->m:B

    .line 152
    invoke-virtual {p1}, Lcom/umeng/analytics/d/A;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p1, Lcom/umeng/analytics/d/A;->a:Lcom/umeng/analytics/d/j;

    iput-object v0, p0, Lcom/umeng/analytics/d/A;->a:Lcom/umeng/analytics/d/j;

    .line 155
    :cond_0
    iget v0, p1, Lcom/umeng/analytics/d/A;->b:I

    iput v0, p0, Lcom/umeng/analytics/d/A;->b:I

    .line 156
    invoke-virtual {p1}, Lcom/umeng/analytics/d/A;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p1, Lcom/umeng/analytics/d/A;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/A;->c:Ljava/lang/String;

    .line 159
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/analytics/d/A;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object p1, p1, Lcom/umeng/analytics/d/A;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/umeng/analytics/d/A;->d:Ljava/lang/String;

    .line 162
    :cond_2
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

    .line 352
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/d/A;->m:B

    .line 353
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/A;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    nop

    .line 357
    return-void

    .line 354
    :catch_0
    move-exception p1

    .line 355
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

    .line 343
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/A;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    nop

    .line 347
    return-void

    .line 344
    :catch_0
    move-exception p1

    .line 345
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic q()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/A;->f:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic r()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/A;->g:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic s()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/A;->h:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic t()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/A;->i:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic u()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/A;->j:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/d/A;
    .locals 1

    .line 165
    new-instance v0, Lcom/umeng/analytics/d/A;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/A;-><init>(Lcom/umeng/analytics/d/A;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/analytics/d/A;
    .locals 0

    .line 214
    iput p1, p0, Lcom/umeng/analytics/d/A;->b:I

    .line 215
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/A;->b(Z)V

    .line 216
    return-object p0
.end method

.method public a(Lcom/umeng/analytics/d/j;)Lcom/umeng/analytics/d/A;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/umeng/analytics/d/A;->a:Lcom/umeng/analytics/d/j;

    .line 191
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/d/A;
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/umeng/analytics/d/A;->c:Ljava/lang/String;

    .line 238
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
    sget-object v0, Lcom/umeng/analytics/d/A;->k:Ljava/util/Map;

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

.method public a(Z)V
    .locals 0

    .line 204
    if-nez p1, :cond_0

    .line 205
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/A;->a:Lcom/umeng/analytics/d/j;

    .line 207
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/A;->c(I)Lcom/umeng/analytics/d/A$e;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/analytics/d/A;
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/umeng/analytics/d/A;->d:Ljava/lang/String;

    .line 262
    return-object p0
.end method

.method public b()V
    .locals 2

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/A;->a:Lcom/umeng/analytics/d/j;

    .line 171
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/d/A;->b(Z)V

    .line 172
    iput v1, p0, Lcom/umeng/analytics/d/A;->b:I

    .line 173
    iput-object v0, p0, Lcom/umeng/analytics/d/A;->c:Ljava/lang/String;

    .line 174
    iput-object v0, p0, Lcom/umeng/analytics/d/A;->d:Ljava/lang/String;

    .line 175
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
    sget-object v0, Lcom/umeng/analytics/d/A;->k:Ljava/util/Map;

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
    .locals 2

    .line 229
    iget-byte v0, p0, Lcom/umeng/analytics/d/A;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/A;->m:B

    .line 230
    return-void
.end method

.method public c(I)Lcom/umeng/analytics/d/A$e;
    .locals 0

    .line 281
    invoke-static {p1}, Lcom/umeng/analytics/d/A$e;->a(I)Lcom/umeng/analytics/d/A$e;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/umeng/analytics/d/j;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/umeng/analytics/d/A;->a:Lcom/umeng/analytics/d/j;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .line 251
    if-nez p1, :cond_0

    .line 252
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/A;->c:Ljava/lang/String;

    .line 254
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/A;->a:Lcom/umeng/analytics/d/j;

    .line 196
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 275
    if-nez p1, :cond_0

    .line 276
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/A;->d:Ljava/lang/String;

    .line 278
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/umeng/analytics/d/A;->a:Lcom/umeng/analytics/d/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/umeng/analytics/d/A;->b:I

    return v0
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/A;->a()Lcom/umeng/analytics/d/A;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 220
    iget-byte v0, p0, Lcom/umeng/analytics/d/A;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/A;->m:B

    .line 221
    return-void
.end method

.method public i()Z
    .locals 2

    .line 225
    iget-byte v0, p0, Lcom/umeng/analytics/d/A;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/umeng/analytics/d/A;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/A;->c:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public l()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/umeng/analytics/d/A;->c:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/umeng/analytics/d/A;->d:Ljava/lang/String;

    return-object v0
.end method

.method public n()V
    .locals 1

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/A;->d:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public o()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/umeng/analytics/d/A;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 339
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    nop

    .line 297
    invoke-virtual {p0}, Lcom/umeng/analytics/d/A;->e()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "null"

    if-eqz v1, :cond_1

    .line 298
    const-string v1, "gender:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-object v1, p0, Lcom/umeng/analytics/d/A;->a:Lcom/umeng/analytics/d/j;

    if-nez v1, :cond_0

    .line 300
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/d/A;->a:Lcom/umeng/analytics/d/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 297
    :cond_1
    const/4 v1, 0x1

    .line 306
    :goto_1
    invoke-virtual {p0}, Lcom/umeng/analytics/d/A;->i()Z

    move-result v4

    const-string v5, ", "

    if-eqz v4, :cond_3

    .line 307
    if-nez v1, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_2
    const-string v1, "age:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget v1, p0, Lcom/umeng/analytics/d/A;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    const/4 v1, 0x0

    .line 312
    :cond_3
    invoke-virtual {p0}, Lcom/umeng/analytics/d/A;->l()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 313
    if-nez v1, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_4
    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-object v1, p0, Lcom/umeng/analytics/d/A;->c:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 316
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 318
    :cond_5
    iget-object v1, p0, Lcom/umeng/analytics/d/A;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :goto_2
    goto :goto_3

    .line 312
    :cond_6
    move v2, v1

    .line 322
    :goto_3
    invoke-virtual {p0}, Lcom/umeng/analytics/d/A;->o()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 323
    if-nez v2, :cond_7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_7
    const-string/jumbo v1, "source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v1, p0, Lcom/umeng/analytics/d/A;->d:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 326
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 328
    :cond_8
    iget-object v1, p0, Lcom/umeng/analytics/d/A;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :goto_4
    nop

    .line 332
    :cond_9
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
