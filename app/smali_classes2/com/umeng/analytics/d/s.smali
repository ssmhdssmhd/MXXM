.class public Lcom/umeng/analytics/d/s;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/s$c;,
        Lcom/umeng/analytics/d/s$d;,
        Lcom/umeng/analytics/d/s$a;,
        Lcom/umeng/analytics/d/s$b;,
        Lcom/umeng/analytics/d/s$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/s;",
        "Lcom/umeng/analytics/d/s$e;",
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
            "Lcom/umeng/analytics/d/s$e;",
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

.field private static final h:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field private i:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "Page"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/s;->d:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v1, "page_name"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/s;->e:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v4, 0x2

    const-string v5, "duration"

    const/16 v6, 0xa

    invoke-direct {v0, v5, v6, v4}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/s;->f:Lcom/umeng/a/a/a/b/c;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/s;->g:Ljava/util/Map;

    .line 39
    sget-object v0, Lcom/umeng/analytics/d/s;->g:Ljava/util/Map;

    const-class v4, Lcom/umeng/a/a/a/c/c;

    new-instance v7, Lcom/umeng/analytics/d/s$b;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/umeng/analytics/d/s$b;-><init>(Lcom/umeng/analytics/d/s$1;)V

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/umeng/analytics/d/s;->g:Ljava/util/Map;

    const-class v4, Lcom/umeng/a/a/a/c/d;

    new-instance v7, Lcom/umeng/analytics/d/s$d;

    invoke-direct {v7, v8}, Lcom/umeng/analytics/d/s$d;-><init>(Lcom/umeng/analytics/d/s$1;)V

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/util/EnumMap;

    const-class v4, Lcom/umeng/analytics/d/s$e;

    invoke-direct {v0, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 113
    sget-object v4, Lcom/umeng/analytics/d/s$e;->a:Lcom/umeng/analytics/d/s$e;

    new-instance v7, Lcom/umeng/a/a/a/a/b;

    new-instance v8, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v8, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v7, v1, v3, v8}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v1, Lcom/umeng/analytics/d/s$e;->b:Lcom/umeng/analytics/d/s$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v6}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v5, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/s;->c:Ljava/util/Map;

    .line 118
    const-class v0, Lcom/umeng/analytics/d/s;

    sget-object v1, Lcom/umeng/analytics/d/s;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 119
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/s;->i:B

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/s;)V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/s;->i:B

    .line 138
    iget-byte v0, p1, Lcom/umeng/analytics/d/s;->i:B

    iput-byte v0, p0, Lcom/umeng/analytics/d/s;->i:B

    .line 139
    invoke-virtual {p1}, Lcom/umeng/analytics/d/s;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p1, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

    .line 142
    :cond_0
    iget-wide v0, p1, Lcom/umeng/analytics/d/s;->b:J

    iput-wide v0, p0, Lcom/umeng/analytics/d/s;->b:J

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/umeng/analytics/d/s;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

    .line 130
    iput-wide p2, p0, Lcom/umeng/analytics/d/s;->b:J

    .line 131
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/s;->b(Z)V

    .line 132
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

    .line 255
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/d/s;->i:B

    .line 256
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/s;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    nop

    .line 260
    return-void

    .line 257
    :catch_0
    move-exception p1

    .line 258
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

    .line 246
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/s;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    nop

    .line 250
    return-void

    .line 247
    :catch_0
    move-exception p1

    .line 248
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic k()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/s;->d:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic l()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/s;->e:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic m()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/s;->f:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/umeng/analytics/d/s$e;
    .locals 0

    .line 204
    invoke-static {p1}, Lcom/umeng/analytics/d/s$e;->a(I)Lcom/umeng/analytics/d/s$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/umeng/analytics/d/s;
    .locals 1

    .line 146
    new-instance v0, Lcom/umeng/analytics/d/s;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/s;-><init>(Lcom/umeng/analytics/d/s;)V

    return-object v0
.end method

.method public a(J)Lcom/umeng/analytics/d/s;
    .locals 0

    .line 185
    iput-wide p1, p0, Lcom/umeng/analytics/d/s;->b:J

    .line 186
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/s;->b(Z)V

    .line 187
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/d/s;
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

    .line 162
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
    sget-object v0, Lcom/umeng/analytics/d/s;->g:Ljava/util/Map;

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
    .locals 0

    .line 175
    if-nez p1, :cond_0

    .line 176
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

    .line 178
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/s;->a(I)Lcom/umeng/analytics/d/s$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/s;->b(Z)V

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/analytics/d/s;->b:J

    .line 154
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
    sget-object v0, Lcom/umeng/analytics/d/s;->g:Ljava/util/Map;

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
    iget-byte v0, p0, Lcom/umeng/analytics/d/s;->i:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/s;->i:B

    .line 201
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public e()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

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

    .line 181
    iget-wide v0, p0, Lcom/umeng/analytics/d/s;->b:J

    return-wide v0
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/s;->a()Lcom/umeng/analytics/d/s;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 191
    iget-byte v0, p0, Lcom/umeng/analytics/d/s;->i:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/s;->i:B

    .line 192
    return-void
.end method

.method public i()Z
    .locals 2

    .line 196
    iget-byte v0, p0, Lcom/umeng/analytics/d/s;->i:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 242
    return-void

    .line 238
    :cond_0
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'page_name\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/s;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Page("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    nop

    .line 220
    const-string v1, "page_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v1, p0, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 222
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/d/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :goto_0
    nop

    .line 227
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v1, "duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-wide v1, p0, Lcom/umeng/analytics/d/s;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 230
    nop

    .line 231
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
