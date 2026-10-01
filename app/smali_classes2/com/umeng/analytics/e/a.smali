.class public Lcom/umeng/analytics/e/a;
.super Ljava/lang/Object;
.source "UMEnvelope.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/e/a$c;,
        Lcom/umeng/analytics/e/a$d;,
        Lcom/umeng/analytics/e/a$a;,
        Lcom/umeng/analytics/e/a$b;,
        Lcom/umeng/analytics/e/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/e/a;",
        "Lcom/umeng/analytics/e/a$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/analytics/e/a$e;",
            "Lcom/umeng/a/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Lcom/umeng/a/a/a/b/m;

.field private static final l:Lcom/umeng/a/a/a/b/c;

.field private static final m:Lcom/umeng/a/a/a/b/c;

.field private static final n:Lcom/umeng/a/a/a/b/c;

.field private static final o:Lcom/umeng/a/a/a/b/c;

.field private static final p:Lcom/umeng/a/a/a/b/c;

.field private static final q:Lcom/umeng/a/a/a/b/c;

.field private static final r:Lcom/umeng/a/a/a/b/c;

.field private static final s:Lcom/umeng/a/a/a/b/c;

.field private static final t:Lcom/umeng/a/a/a/b/c;

.field private static final u:Ljava/util/Map;
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

.field private static final v:I = 0x0

.field private static final w:I = 0x1

.field private static final x:I = 0x2


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field private y:B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "UMEnvelope"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/e/a;->k:Lcom/umeng/a/a/a/b/m;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string/jumbo v1, "version"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/e/a;->l:Lcom/umeng/a/a/a/b/c;

    .line 37
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v4, 0x2

    const-string v5, "address"

    invoke-direct {v0, v5, v2, v4}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/e/a;->m:Lcom/umeng/a/a/a/b/c;

    .line 38
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v4, 0x3

    const-string/jumbo v6, "signature"

    invoke-direct {v0, v6, v2, v4}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/e/a;->n:Lcom/umeng/a/a/a/b/c;

    .line 39
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v4, 0x4

    const-string v7, "serial_num"

    const/16 v8, 0x8

    invoke-direct {v0, v7, v8, v4}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/e/a;->o:Lcom/umeng/a/a/a/b/c;

    .line 40
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v4, 0x5

    const-string/jumbo v9, "ts_secs"

    invoke-direct {v0, v9, v8, v4}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/e/a;->p:Lcom/umeng/a/a/a/b/c;

    .line 41
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v4, 0x6

    const-string v10, "length"

    invoke-direct {v0, v10, v8, v4}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/e/a;->q:Lcom/umeng/a/a/a/b/c;

    .line 42
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v4, 0x7

    const-string v11, "entity"

    invoke-direct {v0, v11, v2, v4}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/e/a;->r:Lcom/umeng/a/a/a/b/c;

    .line 43
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v4, "guid"

    invoke-direct {v0, v4, v2, v8}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/e/a;->s:Lcom/umeng/a/a/a/b/c;

    .line 44
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/16 v12, 0x9

    const-string v13, "checksum"

    invoke-direct {v0, v13, v2, v12}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/e/a;->t:Lcom/umeng/a/a/a/b/c;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/e/a;->u:Ljava/util/Map;

    .line 48
    sget-object v0, Lcom/umeng/analytics/e/a;->u:Ljava/util/Map;

    const-class v12, Lcom/umeng/a/a/a/c/c;

    new-instance v14, Lcom/umeng/analytics/e/a$b;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/umeng/analytics/e/a$b;-><init>(Lcom/umeng/analytics/e/a$1;)V

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/umeng/analytics/e/a;->u:Ljava/util/Map;

    const-class v12, Lcom/umeng/a/a/a/c/d;

    new-instance v14, Lcom/umeng/analytics/e/a$d;

    invoke-direct {v14, v15}, Lcom/umeng/analytics/e/a$d;-><init>(Lcom/umeng/analytics/e/a$1;)V

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v0, Ljava/util/EnumMap;

    const-class v12, Lcom/umeng/analytics/e/a$e;

    invoke-direct {v0, v12}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 152
    sget-object v12, Lcom/umeng/analytics/e/a$e;->a:Lcom/umeng/analytics/e/a$e;

    new-instance v14, Lcom/umeng/a/a/a/a/b;

    new-instance v15, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v15, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v14, v1, v3, v15}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/umeng/analytics/e/a$e;->b:Lcom/umeng/analytics/e/a$e;

    new-instance v12, Lcom/umeng/a/a/a/a/b;

    new-instance v14, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v14, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v12, v5, v3, v14}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/umeng/analytics/e/a$e;->c:Lcom/umeng/analytics/e/a$e;

    new-instance v5, Lcom/umeng/a/a/a/a/b;

    new-instance v12, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v12, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v5, v6, v3, v12}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/umeng/analytics/e/a$e;->d:Lcom/umeng/analytics/e/a$e;

    new-instance v5, Lcom/umeng/a/a/a/a/b;

    new-instance v6, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v6, v8}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v5, v7, v3, v6}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/umeng/analytics/e/a$e;->e:Lcom/umeng/analytics/e/a$e;

    new-instance v5, Lcom/umeng/a/a/a/a/b;

    new-instance v6, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v6, v8}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v5, v9, v3, v6}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/umeng/analytics/e/a$e;->f:Lcom/umeng/analytics/e/a$e;

    new-instance v5, Lcom/umeng/a/a/a/a/b;

    new-instance v6, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v6, v8}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v5, v10, v3, v6}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/umeng/analytics/e/a$e;->g:Lcom/umeng/analytics/e/a$e;

    new-instance v5, Lcom/umeng/a/a/a/a/b;

    new-instance v6, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v6, v2, v3}, Lcom/umeng/a/a/a/a/c;-><init>(BZ)V

    invoke-direct {v5, v11, v3, v6}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lcom/umeng/analytics/e/a$e;->h:Lcom/umeng/analytics/e/a$e;

    new-instance v5, Lcom/umeng/a/a/a/a/b;

    new-instance v6, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v6, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v5, v4, v3, v6}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lcom/umeng/analytics/e/a$e;->i:Lcom/umeng/analytics/e/a$e;

    new-instance v4, Lcom/umeng/a/a/a/a/b;

    new-instance v5, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v5, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v13, v3, v5}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/e/a;->j:Ljava/util/Map;

    .line 171
    const-class v0, Lcom/umeng/analytics/e/a;

    sget-object v1, Lcom/umeng/analytics/e/a;->j:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 172
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/e/a;->y:B

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/e/a;)V
    .locals 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/e/a;->y:B

    .line 207
    iget-byte v0, p1, Lcom/umeng/analytics/e/a;->y:B

    iput-byte v0, p0, Lcom/umeng/analytics/e/a;->y:B

    .line 208
    invoke-virtual {p1}, Lcom/umeng/analytics/e/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p1, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/e/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p1, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    .line 214
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/analytics/e/a;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p1, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    .line 217
    :cond_2
    iget v0, p1, Lcom/umeng/analytics/e/a;->d:I

    iput v0, p0, Lcom/umeng/analytics/e/a;->d:I

    .line 218
    iget v0, p1, Lcom/umeng/analytics/e/a;->e:I

    iput v0, p0, Lcom/umeng/analytics/e/a;->e:I

    .line 219
    iget v0, p1, Lcom/umeng/analytics/e/a;->f:I

    iput v0, p0, Lcom/umeng/analytics/e/a;->f:I

    .line 220
    invoke-virtual {p1}, Lcom/umeng/analytics/e/a;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p1, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/umeng/a/a/a/e;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    .line 224
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/analytics/e/a;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    iget-object v0, p1, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    .line 227
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/analytics/e/a;->E()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 228
    iget-object p1, p1, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    .line 230
    :cond_5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/umeng/analytics/e/a;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    .line 192
    iput p4, p0, Lcom/umeng/analytics/e/a;->d:I

    .line 193
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/e/a;->d(Z)V

    .line 194
    iput p5, p0, Lcom/umeng/analytics/e/a;->e:I

    .line 195
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/e/a;->e(Z)V

    .line 196
    iput p6, p0, Lcom/umeng/analytics/e/a;->f:I

    .line 197
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/e/a;->f(Z)V

    .line 198
    iput-object p7, p0, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    .line 199
    iput-object p8, p0, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    .line 200
    iput-object p9, p0, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    .line 201
    return-void
.end method

.method static synthetic G()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 33
    sget-object v0, Lcom/umeng/analytics/e/a;->k:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic H()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 33
    sget-object v0, Lcom/umeng/analytics/e/a;->l:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic I()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 33
    sget-object v0, Lcom/umeng/analytics/e/a;->m:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic J()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 33
    sget-object v0, Lcom/umeng/analytics/e/a;->n:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic K()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 33
    sget-object v0, Lcom/umeng/analytics/e/a;->o:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic L()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 33
    sget-object v0, Lcom/umeng/analytics/e/a;->p:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic M()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 33
    sget-object v0, Lcom/umeng/analytics/e/a;->q:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic N()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 33
    sget-object v0, Lcom/umeng/analytics/e/a;->r:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic O()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 33
    sget-object v0, Lcom/umeng/analytics/e/a;->s:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic P()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 33
    sget-object v0, Lcom/umeng/analytics/e/a;->t:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 592
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/e/a;->y:B

    .line 593
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/e/a;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    nop

    .line 597
    return-void

    .line 594
    :catch_0
    move-exception p1

    .line 595
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

    .line 583
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/e/a;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    nop

    .line 587
    return-void

    .line 584
    :catch_0
    move-exception p1

    .line 585
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public B()Z
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public D()V
    .locals 1

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    .line 462
    return-void
.end method

.method public E()Z
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 560
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 563
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 569
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 572
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 579
    return-void

    .line 576
    :cond_0
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/e/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_1
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/e/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_2
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'entity\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/e/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_3
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'signature\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/e/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_4
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'address\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/e/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_5
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/e/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Lcom/umeng/analytics/e/a;
    .locals 1

    .line 233
    new-instance v0, Lcom/umeng/analytics/e/a;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/e/a;-><init>(Lcom/umeng/analytics/e/a;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/analytics/e/a;
    .locals 0

    .line 329
    iput p1, p0, Lcom/umeng/analytics/e/a;->d:I

    .line 330
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/e/a;->d(Z)V

    .line 331
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/e/a;
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    .line 258
    return-object p0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/umeng/analytics/e/a;
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    .line 409
    return-object p0
.end method

.method public a([B)Lcom/umeng/analytics/e/a;
    .locals 1

    .line 403
    if-nez p1, :cond_0

    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/e/a;->a(Ljava/nio/ByteBuffer;)Lcom/umeng/analytics/e/a;

    .line 404
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 480
    sget-object v0, Lcom/umeng/analytics/e/a;->u:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 481
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 271
    if-nez p1, :cond_0

    .line 272
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    .line 274
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/e/a;->e(I)Lcom/umeng/analytics/e/a$e;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/analytics/e/a;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    .line 282
    return-object p0
.end method

.method public b()V
    .locals 2

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    .line 239
    iput-object v0, p0, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    .line 240
    iput-object v0, p0, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    .line 241
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/e/a;->d(Z)V

    .line 242
    iput v1, p0, Lcom/umeng/analytics/e/a;->d:I

    .line 243
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/e/a;->e(Z)V

    .line 244
    iput v1, p0, Lcom/umeng/analytics/e/a;->e:I

    .line 245
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/e/a;->f(Z)V

    .line 246
    iput v1, p0, Lcom/umeng/analytics/e/a;->f:I

    .line 247
    iput-object v0, p0, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    .line 248
    iput-object v0, p0, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    .line 249
    iput-object v0, p0, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 484
    sget-object v0, Lcom/umeng/analytics/e/a;->u:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 485
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 295
    if-nez p1, :cond_0

    .line 296
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    .line 298
    :cond_0
    return-void
.end method

.method public c(I)Lcom/umeng/analytics/e/a;
    .locals 0

    .line 352
    iput p1, p0, Lcom/umeng/analytics/e/a;->e:I

    .line 353
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/e/a;->e(Z)V

    .line 354
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/umeng/analytics/e/a;
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    .line 306
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .line 319
    if-nez p1, :cond_0

    .line 320
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    .line 322
    :cond_0
    return-void
.end method

.method public d(I)Lcom/umeng/analytics/e/a;
    .locals 0

    .line 375
    iput p1, p0, Lcom/umeng/analytics/e/a;->f:I

    .line 376
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/e/a;->f(Z)V

    .line 377
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/umeng/analytics/e/a;
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    .line 433
    return-object p0
.end method

.method public d()V
    .locals 1

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 344
    iget-byte v0, p0, Lcom/umeng/analytics/e/a;->y:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/e/a;->y:B

    .line 345
    return-void
.end method

.method public e(I)Lcom/umeng/analytics/e/a$e;
    .locals 0

    .line 476
    invoke-static {p1}, Lcom/umeng/analytics/e/a$e;->a(I)Lcom/umeng/analytics/e/a$e;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/umeng/analytics/e/a;
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    .line 457
    return-object p0
.end method

.method public e(Z)V
    .locals 2

    .line 367
    iget-byte v0, p0, Lcom/umeng/analytics/e/a;->y:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/e/a;->y:B

    .line 368
    return-void
.end method

.method public e()Z
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Z)V
    .locals 2

    .line 390
    iget-byte v0, p0, Lcom/umeng/analytics/e/a;->y:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/e/a;->y:B

    .line 391
    return-void
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/umeng/analytics/e/a;->a()Lcom/umeng/analytics/e/a;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 0

    .line 422
    if-nez p1, :cond_0

    .line 423
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    .line 425
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 446
    if-nez p1, :cond_0

    .line 447
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    .line 449
    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 470
    if-nez p1, :cond_0

    .line 471
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    .line 473
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public l()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()I
    .locals 1

    .line 325
    iget v0, p0, Lcom/umeng/analytics/e/a;->d:I

    return v0
.end method

.method public n()V
    .locals 2

    .line 335
    iget-byte v0, p0, Lcom/umeng/analytics/e/a;->y:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/e/a;->y:B

    .line 336
    return-void
.end method

.method public o()Z
    .locals 2

    .line 340
    iget-byte v0, p0, Lcom/umeng/analytics/e/a;->y:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    .line 348
    iget v0, p0, Lcom/umeng/analytics/e/a;->e:I

    return v0
.end method

.method public q()V
    .locals 2

    .line 358
    iget-byte v0, p0, Lcom/umeng/analytics/e/a;->y:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/e/a;->y:B

    .line 359
    return-void
.end method

.method public r()Z
    .locals 2

    .line 363
    iget-byte v0, p0, Lcom/umeng/analytics/e/a;->y:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    .line 371
    iget v0, p0, Lcom/umeng/analytics/e/a;->f:I

    return v0
.end method

.method public t()V
    .locals 2

    .line 381
    iget-byte v0, p0, Lcom/umeng/analytics/e/a;->y:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/e/a;->y:B

    .line 382
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UMEnvelope("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    nop

    .line 492
    const-string/jumbo v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    iget-object v1, p0, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 494
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :goto_0
    nop

    .line 499
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string v3, "address:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    iget-object v3, p0, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 502
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 504
    :cond_1
    iget-object v3, p0, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :goto_1
    nop

    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const-string/jumbo v3, "signature:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget-object v3, p0, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 512
    :cond_2
    iget-object v3, p0, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :goto_2
    nop

    .line 515
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v3, "serial_num:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    iget v3, p0, Lcom/umeng/analytics/e/a;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    nop

    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string/jumbo v3, "ts_secs:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget v3, p0, Lcom/umeng/analytics/e/a;->e:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    nop

    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string v3, "length:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    iget v3, p0, Lcom/umeng/analytics/e/a;->f:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 526
    nop

    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string v3, "entity:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    iget-object v3, p0, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_3

    .line 530
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 532
    :cond_3
    iget-object v3, p0, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    invoke-static {v3, v0}, Lcom/umeng/a/a/a/e;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    .line 534
    :goto_3
    nop

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const-string v3, "guid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    iget-object v3, p0, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 538
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 540
    :cond_4
    iget-object v3, p0, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :goto_4
    nop

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget-object v1, p0, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 546
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 548
    :cond_5
    iget-object v1, p0, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :goto_5
    nop

    .line 551
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 2

    .line 386
    iget-byte v0, p0, Lcom/umeng/analytics/e/a;->y:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public v()[B
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/umeng/a/a/a/e;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/e/a;->a(Ljava/nio/ByteBuffer;)Lcom/umeng/analytics/e/a;

    .line 395
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public w()Ljava/nio/ByteBuffer;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public x()V
    .locals 1

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    .line 414
    return-void
.end method

.method public y()Z
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    return-object v0
.end method
