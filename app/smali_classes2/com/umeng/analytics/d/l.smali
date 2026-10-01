.class public Lcom/umeng/analytics/d/l;
.super Ljava/lang/Object;
.source "IdSnapshot.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/l$c;,
        Lcom/umeng/analytics/d/l$d;,
        Lcom/umeng/analytics/d/l$a;,
        Lcom/umeng/analytics/d/l$b;,
        Lcom/umeng/analytics/d/l$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/l;",
        "Lcom/umeng/analytics/d/l$e;",
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
            "Lcom/umeng/analytics/d/l$e;",
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


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field private l:B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "IdSnapshot"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/l;->e:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v1, "identity"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/l;->f:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v4, 0x2

    const-string/jumbo v5, "ts"

    const/16 v6, 0xa

    invoke-direct {v0, v5, v6, v4}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/l;->g:Lcom/umeng/a/a/a/b/c;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v4, 0x3

    const-string/jumbo v7, "version"

    const/16 v8, 0x8

    invoke-direct {v0, v7, v8, v4}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/l;->h:Lcom/umeng/a/a/a/b/c;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/l;->i:Ljava/util/Map;

    .line 40
    sget-object v0, Lcom/umeng/analytics/d/l;->i:Ljava/util/Map;

    const-class v4, Lcom/umeng/a/a/a/c/c;

    new-instance v9, Lcom/umeng/analytics/d/l$b;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/umeng/analytics/d/l$b;-><init>(Lcom/umeng/analytics/d/l$1;)V

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/umeng/analytics/d/l;->i:Ljava/util/Map;

    const-class v4, Lcom/umeng/a/a/a/c/d;

    new-instance v9, Lcom/umeng/analytics/d/l$d;

    invoke-direct {v9, v10}, Lcom/umeng/analytics/d/l$d;-><init>(Lcom/umeng/analytics/d/l$1;)V

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/EnumMap;

    const-class v4, Lcom/umeng/analytics/d/l$e;

    invoke-direct {v0, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 119
    sget-object v4, Lcom/umeng/analytics/d/l$e;->a:Lcom/umeng/analytics/d/l$e;

    new-instance v9, Lcom/umeng/a/a/a/a/b;

    new-instance v10, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v10, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v9, v1, v3, v10}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/umeng/analytics/d/l$e;->b:Lcom/umeng/analytics/d/l$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v6}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v5, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/umeng/analytics/d/l$e;->c:Lcom/umeng/analytics/d/l$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v8}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v7, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/l;->d:Ljava/util/Map;

    .line 126
    const-class v0, Lcom/umeng/analytics/d/l;

    sget-object v1, Lcom/umeng/analytics/d/l;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 127
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/l;->l:B

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/l;)V
    .locals 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/l;->l:B

    .line 149
    iget-byte v0, p1, Lcom/umeng/analytics/d/l;->l:B

    iput-byte v0, p0, Lcom/umeng/analytics/d/l;->l:B

    .line 150
    invoke-virtual {p1}, Lcom/umeng/analytics/d/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p1, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

    .line 153
    :cond_0
    iget-wide v0, p1, Lcom/umeng/analytics/d/l;->b:J

    iput-wide v0, p0, Lcom/umeng/analytics/d/l;->b:J

    .line 154
    iget p1, p1, Lcom/umeng/analytics/d/l;->c:I

    iput p1, p0, Lcom/umeng/analytics/d/l;->c:I

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/umeng/analytics/d/l;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

    .line 139
    iput-wide p2, p0, Lcom/umeng/analytics/d/l;->b:J

    .line 140
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/l;->b(Z)V

    .line 141
    iput p4, p0, Lcom/umeng/analytics/d/l;->c:I

    .line 142
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/l;->c(Z)V

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

    .line 297
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/d/l;->l:B

    .line 298
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/l;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    nop

    .line 302
    return-void

    .line 299
    :catch_0
    move-exception p1

    .line 300
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

    .line 288
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/l;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    nop

    .line 292
    return-void

    .line 289
    :catch_0
    move-exception p1

    .line 290
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic n()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/l;->e:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic o()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/l;->f:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic p()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/l;->g:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic q()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/l;->h:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/d/l;
    .locals 1

    .line 158
    new-instance v0, Lcom/umeng/analytics/d/l;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/l;-><init>(Lcom/umeng/analytics/d/l;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/analytics/d/l;
    .locals 0

    .line 222
    iput p1, p0, Lcom/umeng/analytics/d/l;->c:I

    .line 223
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/l;->c(Z)V

    .line 224
    return-object p0
.end method

.method public a(J)Lcom/umeng/analytics/d/l;
    .locals 0

    .line 199
    iput-wide p1, p0, Lcom/umeng/analytics/d/l;->b:J

    .line 200
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/l;->b(Z)V

    .line 201
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/d/l;
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

    .line 176
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
    sget-object v0, Lcom/umeng/analytics/d/l;->i:Ljava/util/Map;

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
    .locals 0

    .line 189
    if-nez p1, :cond_0

    .line 190
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

    .line 192
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/l;->c(I)Lcom/umeng/analytics/d/l$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 3

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/l;->b(Z)V

    .line 165
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/umeng/analytics/d/l;->b:J

    .line 166
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/l;->c(Z)V

    .line 167
    iput v0, p0, Lcom/umeng/analytics/d/l;->c:I

    .line 168
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
    sget-object v0, Lcom/umeng/analytics/d/l;->i:Ljava/util/Map;

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
    iget-byte v0, p0, Lcom/umeng/analytics/d/l;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/l;->l:B

    .line 215
    return-void
.end method

.method public c(I)Lcom/umeng/analytics/d/l$e;
    .locals 0

    .line 241
    invoke-static {p1}, Lcom/umeng/analytics/d/l$e;->a(I)Lcom/umeng/analytics/d/l$e;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .line 237
    iget-byte v0, p0, Lcom/umeng/analytics/d/l;->l:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/l;->l:B

    .line 238
    return-void
.end method

.method public d()V
    .locals 1

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public e()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

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

    .line 195
    iget-wide v0, p0, Lcom/umeng/analytics/d/l;->b:J

    return-wide v0
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/l;->a()Lcom/umeng/analytics/d/l;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 205
    iget-byte v0, p0, Lcom/umeng/analytics/d/l;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/l;->l:B

    .line 206
    return-void
.end method

.method public i()Z
    .locals 2

    .line 210
    iget-byte v0, p0, Lcom/umeng/analytics/d/l;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/umeng/analytics/d/l;->c:I

    return v0
.end method

.method public k()V
    .locals 2

    .line 228
    iget-byte v0, p0, Lcom/umeng/analytics/d/l;->l:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/l;->l:B

    .line 229
    return-void
.end method

.method public l()Z
    .locals 2

    .line 233
    iget-byte v0, p0, Lcom/umeng/analytics/d/l;->l:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 284
    return-void

    .line 279
    :cond_0
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'identity\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/l;->toString()Ljava/lang/String;

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

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdSnapshot("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    nop

    .line 257
    const-string v1, "identity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-object v1, p0, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 259
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/d/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :goto_0
    nop

    .line 264
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string/jumbo v2, "ts:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-wide v2, p0, Lcom/umeng/analytics/d/l;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 267
    nop

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string/jumbo v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget v1, p0, Lcom/umeng/analytics/d/l;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    nop

    .line 272
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
