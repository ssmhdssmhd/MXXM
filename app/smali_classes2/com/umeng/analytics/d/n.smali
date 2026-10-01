.class public Lcom/umeng/analytics/d/n;
.super Ljava/lang/Object;
.source "Imprint.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/n$c;,
        Lcom/umeng/analytics/d/n$d;,
        Lcom/umeng/analytics/d/n$a;,
        Lcom/umeng/analytics/d/n$b;,
        Lcom/umeng/analytics/d/n$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/n;",
        "Lcom/umeng/analytics/d/n$e;",
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
            "Lcom/umeng/analytics/d/n$e;",
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
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/o;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/lang/String;

.field private k:B


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "Imprint"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/n;->e:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v1, "property"

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/n;->f:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v4, 0x2

    const-string/jumbo v5, "version"

    const/16 v6, 0x8

    invoke-direct {v0, v5, v6, v4}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/n;->g:Lcom/umeng/a/a/a/b/c;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v4, 0x3

    const-string v7, "checksum"

    const/16 v8, 0xb

    invoke-direct {v0, v7, v8, v4}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/n;->h:Lcom/umeng/a/a/a/b/c;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/n;->i:Ljava/util/Map;

    .line 40
    sget-object v0, Lcom/umeng/analytics/d/n;->i:Ljava/util/Map;

    const-class v4, Lcom/umeng/a/a/a/c/c;

    new-instance v9, Lcom/umeng/analytics/d/n$b;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/umeng/analytics/d/n$b;-><init>(Lcom/umeng/analytics/d/n$1;)V

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/umeng/analytics/d/n;->i:Ljava/util/Map;

    const-class v4, Lcom/umeng/a/a/a/c/d;

    new-instance v9, Lcom/umeng/analytics/d/n$d;

    invoke-direct {v9, v10}, Lcom/umeng/analytics/d/n$d;-><init>(Lcom/umeng/analytics/d/n$1;)V

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/EnumMap;

    const-class v4, Lcom/umeng/analytics/d/n$e;

    invoke-direct {v0, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 118
    sget-object v4, Lcom/umeng/analytics/d/n$e;->a:Lcom/umeng/analytics/d/n$e;

    new-instance v9, Lcom/umeng/a/a/a/a/b;

    new-instance v10, Lcom/umeng/a/a/a/a/e;

    new-instance v11, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v11, v8}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    new-instance v12, Lcom/umeng/a/a/a/a/g;

    const/16 v13, 0xc

    const-class v14, Lcom/umeng/analytics/d/o;

    invoke-direct {v12, v13, v14}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v10, v2, v11, v12}, Lcom/umeng/a/a/a/a/e;-><init>(BLcom/umeng/a/a/a/a/c;Lcom/umeng/a/a/a/a/c;)V

    invoke-direct {v9, v1, v3, v10}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lcom/umeng/analytics/d/n$e;->b:Lcom/umeng/analytics/d/n$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v6}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v5, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lcom/umeng/analytics/d/n$e;->c:Lcom/umeng/analytics/d/n$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v8}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v7, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/n;->d:Ljava/util/Map;

    .line 127
    const-class v0, Lcom/umeng/analytics/d/n;

    sget-object v1, Lcom/umeng/analytics/d/n;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/n;->k:B

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/n;)V
    .locals 5

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/n;->k:B

    .line 149
    iget-byte v0, p1, Lcom/umeng/analytics/d/n;->k:B

    iput-byte v0, p0, Lcom/umeng/analytics/d/n;->k:B

    .line 150
    invoke-virtual {p1}, Lcom/umeng/analytics/d/n;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    iget-object v1, p1, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

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

    .line 154
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 155
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/d/o;

    .line 157
    nop

    .line 159
    new-instance v4, Lcom/umeng/analytics/d/o;

    invoke-direct {v4, v2}, Lcom/umeng/analytics/d/o;-><init>(Lcom/umeng/analytics/d/o;)V

    .line 161
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    goto :goto_0

    .line 163
    :cond_0
    iput-object v0, p0, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    .line 165
    :cond_1
    iget v0, p1, Lcom/umeng/analytics/d/n;->b:I

    iput v0, p0, Lcom/umeng/analytics/d/n;->b:I

    .line 166
    invoke-virtual {p1}, Lcom/umeng/analytics/d/n;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object p1, p1, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    .line 169
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/o;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lcom/umeng/analytics/d/n;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    .line 140
    iput p2, p0, Lcom/umeng/analytics/d/n;->b:I

    .line 141
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/n;->b(Z)V

    .line 142
    iput-object p3, p0, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    .line 143
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

    .line 328
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/d/n;->k:B

    .line 329
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/n;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    nop

    .line 333
    return-void

    .line 330
    :catch_0
    move-exception p1

    .line 331
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

    .line 319
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/n;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    nop

    .line 323
    return-void

    .line 320
    :catch_0
    move-exception p1

    .line 321
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic o()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/n;->e:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic p()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/n;->f:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic q()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/n;->g:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic r()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/n;->h:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/d/n;
    .locals 1

    .line 172
    new-instance v0, Lcom/umeng/analytics/d/n;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/n;-><init>(Lcom/umeng/analytics/d/n;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/analytics/d/n;
    .locals 0

    .line 223
    iput p1, p0, Lcom/umeng/analytics/d/n;->b:I

    .line 224
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/n;->b(Z)V

    .line 225
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/d/n;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    .line 247
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/umeng/analytics/d/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/o;",
            ">;)",
            "Lcom/umeng/analytics/d/n;"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    .line 200
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 270
    sget-object v0, Lcom/umeng/analytics/d/n;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 271
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/umeng/analytics/d/o;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 213
    if-nez p1, :cond_0

    .line 214
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    .line 216
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/n;->c(I)Lcom/umeng/analytics/d/n$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    .line 178
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/d/n;->b(Z)V

    .line 179
    iput v1, p0, Lcom/umeng/analytics/d/n;->b:I

    .line 180
    iput-object v0, p0, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/umeng/analytics/d/n;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 275
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 238
    iget-byte v0, p0, Lcom/umeng/analytics/d/n;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/n;->k:B

    .line 239
    return-void
.end method

.method public c()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public c(I)Lcom/umeng/analytics/d/n$e;
    .locals 0

    .line 266
    invoke-static {p1}, Lcom/umeng/analytics/d/n$e;->a(I)Lcom/umeng/analytics/d/n$e;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)V
    .locals 0

    .line 260
    if-nez p1, :cond_0

    .line 261
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    .line 263
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
            "Lcom/umeng/analytics/d/o;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    return-object v0
.end method

.method public e()V
    .locals 1

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    .line 205
    return-void
.end method

.method public f()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

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
    invoke-virtual {p0}, Lcom/umeng/analytics/d/n;->a()Lcom/umeng/analytics/d/n;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/umeng/analytics/d/n;->b:I

    return v0
.end method

.method public i()V
    .locals 2

    .line 229
    iget-byte v0, p0, Lcom/umeng/analytics/d/n;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/n;->k:B

    .line 230
    return-void
.end method

.method public j()Z
    .locals 2

    .line 234
    iget-byte v0, p0, Lcom/umeng/analytics/d/n;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()V
    .locals 1

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public m()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 315
    return-void

    .line 312
    :cond_0
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_1
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'property\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/n;->toString()Ljava/lang/String;

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

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Imprint("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    nop

    .line 282
    const-string v1, "property:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v1, p0, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 284
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/d/n;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    :goto_0
    nop

    .line 289
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string/jumbo v3, "version:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget v3, p0, Lcom/umeng/analytics/d/n;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    nop

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v1, p0, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 296
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/d/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :goto_1
    nop

    .line 301
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
