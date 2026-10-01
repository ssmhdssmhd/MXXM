.class public Lcom/umeng/analytics/d/u;
.super Ljava/lang/Object;
.source "Resolution.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/u$c;,
        Lcom/umeng/analytics/d/u$d;,
        Lcom/umeng/analytics/d/u$a;,
        Lcom/umeng/analytics/d/u$b;,
        Lcom/umeng/analytics/d/u$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/u;",
        "Lcom/umeng/analytics/d/u$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/analytics/d/u$e;",
            "Lcom/umeng/a/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/umeng/a/a/a/b/m;

.field private static final e:Lcom/umeng/a/a/a/b/c;

.field private static final f:Lcom/umeng/a/a/a/b/c;

.field private static final g:Ljava/util/Map;
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

.field private static final h:I = 0x0

.field private static final i:I = 0x1


# instance fields
.field public a:I

.field public b:I

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "Resolution"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/u;->d:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v1, "height"

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/u;->e:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v4, 0x2

    const-string/jumbo v5, "width"

    invoke-direct {v0, v5, v2, v4}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/u;->f:Lcom/umeng/a/a/a/b/c;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/u;->g:Ljava/util/Map;

    .line 39
    sget-object v0, Lcom/umeng/analytics/d/u;->g:Ljava/util/Map;

    const-class v4, Lcom/umeng/a/a/a/c/c;

    new-instance v6, Lcom/umeng/analytics/d/u$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/umeng/analytics/d/u$b;-><init>(Lcom/umeng/analytics/d/u$1;)V

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/umeng/analytics/d/u;->g:Ljava/util/Map;

    const-class v4, Lcom/umeng/a/a/a/c/d;

    new-instance v6, Lcom/umeng/analytics/d/u$d;

    invoke-direct {v6, v7}, Lcom/umeng/analytics/d/u$d;-><init>(Lcom/umeng/analytics/d/u$1;)V

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/util/EnumMap;

    const-class v4, Lcom/umeng/analytics/d/u$e;

    invoke-direct {v0, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 114
    sget-object v4, Lcom/umeng/analytics/d/u$e;->a:Lcom/umeng/analytics/d/u$e;

    new-instance v6, Lcom/umeng/a/a/a/a/b;

    new-instance v7, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v7, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v6, v1, v3, v7}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lcom/umeng/analytics/d/u$e;->b:Lcom/umeng/analytics/d/u$e;

    new-instance v4, Lcom/umeng/a/a/a/a/b;

    new-instance v6, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v6, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v5, v3, v6}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/u;->c:Ljava/util/Map;

    .line 119
    const-class v0, Lcom/umeng/analytics/d/u;

    sget-object v1, Lcom/umeng/analytics/d/u;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/u;->j:B

    .line 123
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/umeng/analytics/d/u;-><init>()V

    .line 130
    iput p1, p0, Lcom/umeng/analytics/d/u;->a:I

    .line 131
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/u;->a(Z)V

    .line 132
    iput p2, p0, Lcom/umeng/analytics/d/u;->b:I

    .line 133
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/u;->b(Z)V

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/u;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/u;->j:B

    .line 140
    iget-byte v0, p1, Lcom/umeng/analytics/d/u;->j:B

    iput-byte v0, p0, Lcom/umeng/analytics/d/u;->j:B

    .line 141
    iget v0, p1, Lcom/umeng/analytics/d/u;->a:I

    iput v0, p0, Lcom/umeng/analytics/d/u;->a:I

    .line 142
    iget p1, p1, Lcom/umeng/analytics/d/u;->b:I

    iput p1, p0, Lcom/umeng/analytics/d/u;->b:I

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

    .line 249
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/d/u;->j:B

    .line 250
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/u;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    nop

    .line 254
    return-void

    .line 251
    :catch_0
    move-exception p1

    .line 252
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

    .line 240
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/u;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    nop

    .line 244
    return-void

    .line 241
    :catch_0
    move-exception p1

    .line 242
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic k()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/u;->d:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic l()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/u;->e:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic m()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/u;->f:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/d/u;
    .locals 1

    .line 146
    new-instance v0, Lcom/umeng/analytics/d/u;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/u;-><init>(Lcom/umeng/analytics/d/u;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/analytics/d/u;
    .locals 0

    .line 162
    iput p1, p0, Lcom/umeng/analytics/d/u;->a:I

    .line 163
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/u;->a(Z)V

    .line 164
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/umeng/analytics/d/u;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 209
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 177
    iget-byte v0, p0, Lcom/umeng/analytics/d/u;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/u;->j:B

    .line 178
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/u;->d(I)Lcom/umeng/analytics/d/u$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/u;->a(Z)V

    .line 152
    iput v0, p0, Lcom/umeng/analytics/d/u;->a:I

    .line 153
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/u;->b(Z)V

    .line 154
    iput v0, p0, Lcom/umeng/analytics/d/u;->b:I

    .line 155
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/umeng/analytics/d/u;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 213
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 200
    iget-byte v0, p0, Lcom/umeng/analytics/d/u;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/u;->j:B

    .line 201
    return-void
.end method

.method public c()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/umeng/analytics/d/u;->a:I

    return v0
.end method

.method public c(I)Lcom/umeng/analytics/d/u;
    .locals 0

    .line 185
    iput p1, p0, Lcom/umeng/analytics/d/u;->b:I

    .line 186
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/u;->b(Z)V

    .line 187
    return-object p0
.end method

.method public d(I)Lcom/umeng/analytics/d/u$e;
    .locals 0

    .line 204
    invoke-static {p1}, Lcom/umeng/analytics/d/u$e;->a(I)Lcom/umeng/analytics/d/u$e;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 2

    .line 168
    iget-byte v0, p0, Lcom/umeng/analytics/d/u;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/u;->j:B

    .line 169
    return-void
.end method

.method public e()Z
    .locals 2

    .line 173
    iget-byte v0, p0, Lcom/umeng/analytics/d/u;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/umeng/analytics/d/u;->b:I

    return v0
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/u;->a()Lcom/umeng/analytics/d/u;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 191
    iget-byte v0, p0, Lcom/umeng/analytics/d/u;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/u;->j:B

    .line 192
    return-void
.end method

.method public i()Z
    .locals 2

    .line 196
    iget-byte v0, p0, Lcom/umeng/analytics/d/u;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 236
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resolution("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    nop

    .line 220
    const-string v1, "height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget v1, p0, Lcom/umeng/analytics/d/u;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    nop

    .line 223
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string/jumbo v1, "width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget v1, p0, Lcom/umeng/analytics/d/u;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    nop

    .line 227
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
