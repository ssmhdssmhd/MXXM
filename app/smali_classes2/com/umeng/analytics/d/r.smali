.class public Lcom/umeng/analytics/d/r;
.super Ljava/lang/Object;
.source "MiscInfo.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/r$c;,
        Lcom/umeng/analytics/d/r$d;,
        Lcom/umeng/analytics/d/r$a;,
        Lcom/umeng/analytics/d/r$b;,
        Lcom/umeng/analytics/d/r$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/r;",
        "Lcom/umeng/analytics/d/r$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final A:I = 0x1

.field private static final B:I = 0x2

.field private static final C:I = 0x3

.field public static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/analytics/d/r$e;",
            "Lcom/umeng/a/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lcom/umeng/a/a/a/b/m;

.field private static final n:Lcom/umeng/a/a/a/b/c;

.field private static final o:Lcom/umeng/a/a/a/b/c;

.field private static final p:Lcom/umeng/a/a/a/b/c;

.field private static final q:Lcom/umeng/a/a/a/b/c;

.field private static final r:Lcom/umeng/a/a/a/b/c;

.field private static final s:Lcom/umeng/a/a/a/b/c;

.field private static final t:Lcom/umeng/a/a/a/b/c;

.field private static final u:Lcom/umeng/a/a/a/b/c;

.field private static final v:Lcom/umeng/a/a/a/b/c;

.field private static final w:Lcom/umeng/a/a/a/b/c;

.field private static final x:Lcom/umeng/a/a/a/b/c;

.field private static final y:Ljava/util/Map;
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

.field private static final z:I


# instance fields
.field private D:B

.field private E:[Lcom/umeng/analytics/d/r$e;

.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:D

.field public e:D

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Lcom/umeng/analytics/d/a;

.field public j:Ljava/lang/String;

.field public k:Lcom/umeng/analytics/d/A;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "MiscInfo"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/r;->m:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v1, 0x1

    const-string/jumbo v2, "time_zone"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/r;->n:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v1, "language"

    const/16 v4, 0xb

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/r;->o:Lcom/umeng/a/a/a/b/c;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v6, 0x3

    const-string v7, "country"

    invoke-direct {v0, v7, v4, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/r;->p:Lcom/umeng/a/a/a/b/c;

    .line 37
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v6, "latitude"

    const/4 v8, 0x4

    invoke-direct {v0, v6, v8, v8}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/r;->q:Lcom/umeng/a/a/a/b/c;

    .line 38
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v9, 0x5

    const-string v10, "longitude"

    invoke-direct {v0, v10, v8, v9}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/r;->r:Lcom/umeng/a/a/a/b/c;

    .line 39
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v9, 0x6

    const-string v11, "carrier"

    invoke-direct {v0, v11, v4, v9}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/r;->s:Lcom/umeng/a/a/a/b/c;

    .line 40
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v9, 0x7

    const-string v12, "latency"

    invoke-direct {v0, v12, v3, v9}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/r;->t:Lcom/umeng/a/a/a/b/c;

    .line 41
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v9, "display_name"

    invoke-direct {v0, v9, v4, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/r;->u:Lcom/umeng/a/a/a/b/c;

    .line 42
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/16 v13, 0x9

    const-string v14, "access_type"

    invoke-direct {v0, v14, v3, v13}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/r;->v:Lcom/umeng/a/a/a/b/c;

    .line 43
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/16 v13, 0xa

    const-string v15, "access_subtype"

    invoke-direct {v0, v15, v4, v13}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/r;->w:Lcom/umeng/a/a/a/b/c;

    .line 44
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string/jumbo v13, "user_info"

    const/16 v8, 0xc

    invoke-direct {v0, v13, v8, v4}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/r;->x:Lcom/umeng/a/a/a/b/c;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/r;->y:Ljava/util/Map;

    .line 48
    sget-object v0, Lcom/umeng/analytics/d/r;->y:Ljava/util/Map;

    const-class v8, Lcom/umeng/a/a/a/c/c;

    new-instance v4, Lcom/umeng/analytics/d/r$b;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/umeng/analytics/d/r$b;-><init>(Lcom/umeng/analytics/d/r$1;)V

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/umeng/analytics/d/r;->y:Ljava/util/Map;

    const-class v4, Lcom/umeng/a/a/a/c/d;

    new-instance v8, Lcom/umeng/analytics/d/r$d;

    invoke-direct {v8, v5}, Lcom/umeng/analytics/d/r$d;-><init>(Lcom/umeng/analytics/d/r$1;)V

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v0, Ljava/util/EnumMap;

    const-class v4, Lcom/umeng/analytics/d/r$e;

    invoke-direct {v0, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 170
    sget-object v4, Lcom/umeng/analytics/d/r$e;->a:Lcom/umeng/analytics/d/r$e;

    new-instance v5, Lcom/umeng/a/a/a/a/b;

    new-instance v8, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v8, v3}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    const/4 v3, 0x2

    invoke-direct {v5, v2, v3, v8}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v2, Lcom/umeng/analytics/d/r$e;->b:Lcom/umeng/analytics/d/r$e;

    new-instance v4, Lcom/umeng/a/a/a/a/b;

    new-instance v5, Lcom/umeng/a/a/a/a/c;

    const/16 v8, 0xb

    invoke-direct {v5, v8}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v1, v3, v5}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v1, Lcom/umeng/analytics/d/r$e;->c:Lcom/umeng/analytics/d/r$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v8}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v7, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lcom/umeng/analytics/d/r$e;->d:Lcom/umeng/analytics/d/r$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v6, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lcom/umeng/analytics/d/r$e;->e:Lcom/umeng/analytics/d/r$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v5}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v10, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lcom/umeng/analytics/d/r$e;->f:Lcom/umeng/analytics/d/r$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    const/16 v8, 0xb

    invoke-direct {v4, v8}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v11, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lcom/umeng/analytics/d/r$e;->g:Lcom/umeng/analytics/d/r$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v12, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lcom/umeng/analytics/d/r$e;->h:Lcom/umeng/analytics/d/r$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    const/16 v8, 0xb

    invoke-direct {v4, v8}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v9, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v1, Lcom/umeng/analytics/d/r$e;->i:Lcom/umeng/analytics/d/r$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/a;

    const/16 v5, 0x10

    const-class v6, Lcom/umeng/analytics/d/a;

    invoke-direct {v4, v5, v6}, Lcom/umeng/a/a/a/a/a;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v14, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lcom/umeng/analytics/d/r$e;->j:Lcom/umeng/analytics/d/r$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    const/16 v8, 0xb

    invoke-direct {v4, v8}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v15, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v1, Lcom/umeng/analytics/d/r$e;->k:Lcom/umeng/analytics/d/r$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/g;

    const-class v5, Lcom/umeng/analytics/d/A;

    const/16 v6, 0xc

    invoke-direct {v4, v6, v5}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v13, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/r;->l:Ljava/util/Map;

    .line 193
    const-class v0, Lcom/umeng/analytics/d/r;

    sget-object v1, Lcom/umeng/analytics/d/r;->l:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 194
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    .line 166
    const/16 v1, 0xb

    new-array v1, v1, [Lcom/umeng/analytics/d/r$e;

    sget-object v2, Lcom/umeng/analytics/d/r$e;->a:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/umeng/analytics/d/r$e;->b:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Lcom/umeng/analytics/d/r$e;->c:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Lcom/umeng/analytics/d/r$e;->d:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/4 v0, 0x4

    sget-object v2, Lcom/umeng/analytics/d/r$e;->e:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    sget-object v2, Lcom/umeng/analytics/d/r$e;->f:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    sget-object v2, Lcom/umeng/analytics/d/r$e;->g:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/4 v0, 0x7

    sget-object v2, Lcom/umeng/analytics/d/r$e;->h:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/16 v0, 0x8

    sget-object v2, Lcom/umeng/analytics/d/r$e;->i:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/16 v0, 0x9

    sget-object v2, Lcom/umeng/analytics/d/r$e;->j:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/16 v0, 0xa

    sget-object v2, Lcom/umeng/analytics/d/r$e;->k:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/r;->E:[Lcom/umeng/analytics/d/r$e;

    .line 197
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/r;)V
    .locals 3

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    .line 166
    const/16 v1, 0xb

    new-array v1, v1, [Lcom/umeng/analytics/d/r$e;

    sget-object v2, Lcom/umeng/analytics/d/r$e;->a:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/umeng/analytics/d/r$e;->b:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Lcom/umeng/analytics/d/r$e;->c:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Lcom/umeng/analytics/d/r$e;->d:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/4 v0, 0x4

    sget-object v2, Lcom/umeng/analytics/d/r$e;->e:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    sget-object v2, Lcom/umeng/analytics/d/r$e;->f:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    sget-object v2, Lcom/umeng/analytics/d/r$e;->g:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/4 v0, 0x7

    sget-object v2, Lcom/umeng/analytics/d/r$e;->h:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/16 v0, 0x8

    sget-object v2, Lcom/umeng/analytics/d/r$e;->i:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/16 v0, 0x9

    sget-object v2, Lcom/umeng/analytics/d/r$e;->j:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    const/16 v0, 0xa

    sget-object v2, Lcom/umeng/analytics/d/r$e;->k:Lcom/umeng/analytics/d/r$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/r;->E:[Lcom/umeng/analytics/d/r$e;

    .line 203
    iget-byte v0, p1, Lcom/umeng/analytics/d/r;->D:B

    iput-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    .line 204
    iget v0, p1, Lcom/umeng/analytics/d/r;->a:I

    iput v0, p0, Lcom/umeng/analytics/d/r;->a:I

    .line 205
    invoke-virtual {p1}, Lcom/umeng/analytics/d/r;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p1, Lcom/umeng/analytics/d/r;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/r;->b:Ljava/lang/String;

    .line 208
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/d/r;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p1, Lcom/umeng/analytics/d/r;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/r;->c:Ljava/lang/String;

    .line 211
    :cond_1
    iget-wide v0, p1, Lcom/umeng/analytics/d/r;->d:D

    iput-wide v0, p0, Lcom/umeng/analytics/d/r;->d:D

    .line 212
    iget-wide v0, p1, Lcom/umeng/analytics/d/r;->e:D

    iput-wide v0, p0, Lcom/umeng/analytics/d/r;->e:D

    .line 213
    invoke-virtual {p1}, Lcom/umeng/analytics/d/r;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p1, Lcom/umeng/analytics/d/r;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/r;->f:Ljava/lang/String;

    .line 216
    :cond_2
    iget v0, p1, Lcom/umeng/analytics/d/r;->g:I

    iput v0, p0, Lcom/umeng/analytics/d/r;->g:I

    .line 217
    invoke-virtual {p1}, Lcom/umeng/analytics/d/r;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p1, Lcom/umeng/analytics/d/r;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/r;->h:Ljava/lang/String;

    .line 220
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/analytics/d/r;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p1, Lcom/umeng/analytics/d/r;->i:Lcom/umeng/analytics/d/a;

    iput-object v0, p0, Lcom/umeng/analytics/d/r;->i:Lcom/umeng/analytics/d/a;

    .line 223
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/analytics/d/r;->G()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    iget-object v0, p1, Lcom/umeng/analytics/d/r;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/r;->j:Ljava/lang/String;

    .line 226
    :cond_5
    invoke-virtual {p1}, Lcom/umeng/analytics/d/r;->J()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 227
    new-instance v0, Lcom/umeng/analytics/d/A;

    iget-object p1, p1, Lcom/umeng/analytics/d/r;->k:Lcom/umeng/analytics/d/A;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/d/A;-><init>(Lcom/umeng/analytics/d/A;)V

    iput-object v0, p0, Lcom/umeng/analytics/d/r;->k:Lcom/umeng/analytics/d/A;

    .line 229
    :cond_6
    return-void
.end method

.method static synthetic L()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/r;->m:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic M()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/r;->n:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic N()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/r;->o:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic O()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/r;->p:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic P()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/r;->q:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic Q()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/r;->r:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic R()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/r;->s:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic S()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/r;->t:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic T()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/r;->u:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic U()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/r;->v:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic V()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/r;->w:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic W()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/r;->x:Lcom/umeng/a/a/a/b/c;

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

    .line 655
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    .line 656
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/r;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    nop

    .line 660
    return-void

    .line 657
    :catch_0
    move-exception p1

    .line 658
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

    .line 646
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/r;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    nop

    .line 650
    return-void

    .line 647
    :catch_0
    move-exception p1

    .line 648
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/umeng/analytics/d/r;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Lcom/umeng/analytics/d/a;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/umeng/analytics/d/r;->i:Lcom/umeng/analytics/d/a;

    return-object v0
.end method

.method public C()V
    .locals 1

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/r;->i:Lcom/umeng/analytics/d/a;

    .line 461
    return-void
.end method

.method public D()Z
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/umeng/analytics/d/r;->i:Lcom/umeng/analytics/d/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/umeng/analytics/d/r;->j:Ljava/lang/String;

    return-object v0
.end method

.method public F()V
    .locals 1

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/r;->j:Ljava/lang/String;

    .line 485
    return-void
.end method

.method public G()Z
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/umeng/analytics/d/r;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()Lcom/umeng/analytics/d/A;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/umeng/analytics/d/r;->k:Lcom/umeng/analytics/d/A;

    return-object v0
.end method

.method public I()V
    .locals 1

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/r;->k:Lcom/umeng/analytics/d/A;

    .line 509
    return-void
.end method

.method public J()Z
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/umeng/analytics/d/r;->k:Lcom/umeng/analytics/d/A;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public K()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/umeng/analytics/d/r;->k:Lcom/umeng/analytics/d/A;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/umeng/analytics/d/r;->k:Lcom/umeng/analytics/d/A;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/A;->p()V

    .line 642
    :cond_0
    return-void
.end method

.method public a()Lcom/umeng/analytics/d/r;
    .locals 1

    .line 232
    new-instance v0, Lcom/umeng/analytics/d/r;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/r;-><init>(Lcom/umeng/analytics/d/r;)V

    return-object v0
.end method

.method public a(D)Lcom/umeng/analytics/d/r;
    .locals 0

    .line 330
    iput-wide p1, p0, Lcom/umeng/analytics/d/r;->d:D

    .line 331
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/r;->d(Z)V

    .line 332
    return-object p0
.end method

.method public a(I)Lcom/umeng/analytics/d/r;
    .locals 0

    .line 259
    iput p1, p0, Lcom/umeng/analytics/d/r;->a:I

    .line 260
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/r;->a(Z)V

    .line 261
    return-object p0
.end method

.method public a(Lcom/umeng/analytics/d/A;)Lcom/umeng/analytics/d/r;
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/umeng/analytics/d/r;->k:Lcom/umeng/analytics/d/A;

    .line 504
    return-object p0
.end method

.method public a(Lcom/umeng/analytics/d/a;)Lcom/umeng/analytics/d/r;
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/umeng/analytics/d/r;->i:Lcom/umeng/analytics/d/a;

    .line 456
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/d/r;
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/umeng/analytics/d/r;->b:Ljava/lang/String;

    .line 283
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 527
    sget-object v0, Lcom/umeng/analytics/d/r;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 528
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 274
    iget-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/r;->D:B

    .line 275
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/r;->d(I)Lcom/umeng/analytics/d/r$e;

    move-result-object p1

    return-object p1
.end method

.method public b(D)Lcom/umeng/analytics/d/r;
    .locals 0

    .line 353
    iput-wide p1, p0, Lcom/umeng/analytics/d/r;->e:D

    .line 354
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/r;->e(Z)V

    .line 355
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/analytics/d/r;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/umeng/analytics/d/r;->c:Ljava/lang/String;

    .line 307
    return-object p0
.end method

.method public b()V
    .locals 4

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/r;->a(Z)V

    .line 238
    iput v0, p0, Lcom/umeng/analytics/d/r;->a:I

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/umeng/analytics/d/r;->b:Ljava/lang/String;

    .line 240
    iput-object v1, p0, Lcom/umeng/analytics/d/r;->c:Ljava/lang/String;

    .line 241
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/r;->d(Z)V

    .line 242
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/umeng/analytics/d/r;->d:D

    .line 243
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/r;->e(Z)V

    .line 244
    iput-wide v2, p0, Lcom/umeng/analytics/d/r;->e:D

    .line 245
    iput-object v1, p0, Lcom/umeng/analytics/d/r;->f:Ljava/lang/String;

    .line 246
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/r;->g(Z)V

    .line 247
    iput v0, p0, Lcom/umeng/analytics/d/r;->g:I

    .line 248
    iput-object v1, p0, Lcom/umeng/analytics/d/r;->h:Ljava/lang/String;

    .line 249
    iput-object v1, p0, Lcom/umeng/analytics/d/r;->i:Lcom/umeng/analytics/d/a;

    .line 250
    iput-object v1, p0, Lcom/umeng/analytics/d/r;->j:Ljava/lang/String;

    .line 251
    iput-object v1, p0, Lcom/umeng/analytics/d/r;->k:Lcom/umeng/analytics/d/A;

    .line 252
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 531
    sget-object v0, Lcom/umeng/analytics/d/r;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 532
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 296
    if-nez p1, :cond_0

    .line 297
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/r;->b:Ljava/lang/String;

    .line 299
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/umeng/analytics/d/r;->a:I

    return v0
.end method

.method public c(I)Lcom/umeng/analytics/d/r;
    .locals 0

    .line 400
    iput p1, p0, Lcom/umeng/analytics/d/r;->g:I

    .line 401
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/r;->g(Z)V

    .line 402
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/umeng/analytics/d/r;
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/umeng/analytics/d/r;->f:Ljava/lang/String;

    .line 377
    return-object p0
.end method

.method public c(Z)V
    .locals 0

    .line 320
    if-nez p1, :cond_0

    .line 321
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/r;->c:Ljava/lang/String;

    .line 323
    :cond_0
    return-void
.end method

.method public d(I)Lcom/umeng/analytics/d/r$e;
    .locals 0

    .line 523
    invoke-static {p1}, Lcom/umeng/analytics/d/r$e;->a(I)Lcom/umeng/analytics/d/r$e;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lcom/umeng/analytics/d/r;
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/umeng/analytics/d/r;->h:Ljava/lang/String;

    .line 424
    return-object p0
.end method

.method public d()V
    .locals 2

    .line 265
    iget-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    .line 266
    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 345
    iget-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/r;->D:B

    .line 346
    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/umeng/analytics/d/r;
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/umeng/analytics/d/r;->j:Ljava/lang/String;

    .line 480
    return-object p0
.end method

.method public e(Z)V
    .locals 2

    .line 368
    iget-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/r;->D:B

    .line 369
    return-void
.end method

.method public e()Z
    .locals 2

    .line 270
    iget-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/umeng/analytics/d/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    .line 390
    if-nez p1, :cond_0

    .line 391
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/r;->f:Ljava/lang/String;

    .line 393
    :cond_0
    return-void
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/r;->a()Lcom/umeng/analytics/d/r;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 2

    .line 415
    iget-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/r;->D:B

    .line 416
    return-void
.end method

.method public h()V
    .locals 1

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/r;->b:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 437
    if-nez p1, :cond_0

    .line 438
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/r;->h:Ljava/lang/String;

    .line 440
    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 469
    if-nez p1, :cond_0

    .line 470
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/r;->i:Lcom/umeng/analytics/d/a;

    .line 472
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/umeng/analytics/d/r;->b:Ljava/lang/String;

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

    .line 302
    iget-object v0, p0, Lcom/umeng/analytics/d/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j(Z)V
    .locals 0

    .line 493
    if-nez p1, :cond_0

    .line 494
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/r;->j:Ljava/lang/String;

    .line 496
    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/r;->c:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 517
    if-nez p1, :cond_0

    .line 518
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/r;->k:Lcom/umeng/analytics/d/A;

    .line 520
    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/umeng/analytics/d/r;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()D
    .locals 2

    .line 326
    iget-wide v0, p0, Lcom/umeng/analytics/d/r;->d:D

    return-wide v0
.end method

.method public n()V
    .locals 2

    .line 336
    iget-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    .line 337
    return-void
.end method

.method public o()Z
    .locals 2

    .line 341
    iget-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public p()D
    .locals 2

    .line 349
    iget-wide v0, p0, Lcom/umeng/analytics/d/r;->e:D

    return-wide v0
.end method

.method public q()V
    .locals 2

    .line 359
    iget-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    .line 360
    return-void
.end method

.method public r()Z
    .locals 2

    .line 364
    iget-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/umeng/analytics/d/r;->f:Ljava/lang/String;

    return-object v0
.end method

.method public t()V
    .locals 1

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/r;->f:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MiscInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    nop

    .line 539
    invoke-virtual {p0}, Lcom/umeng/analytics/d/r;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 540
    const-string/jumbo v1, "time_zone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    iget v1, p0, Lcom/umeng/analytics/d/r;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 542
    const/4 v1, 0x0

    goto :goto_0

    .line 539
    :cond_0
    const/4 v1, 0x1

    .line 544
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/analytics/d/r;->i()Z

    move-result v3

    const-string v4, "null"

    const-string v5, ", "

    if-eqz v3, :cond_3

    .line 545
    if-nez v1, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_1
    const-string v1, "language:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v1, p0, Lcom/umeng/analytics/d/r;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 548
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 550
    :cond_2
    iget-object v1, p0, Lcom/umeng/analytics/d/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :goto_1
    const/4 v1, 0x0

    .line 554
    :cond_3
    invoke-virtual {p0}, Lcom/umeng/analytics/d/r;->l()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 555
    if-nez v1, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_4
    const-string v1, "country:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget-object v1, p0, Lcom/umeng/analytics/d/r;->c:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 558
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 560
    :cond_5
    iget-object v1, p0, Lcom/umeng/analytics/d/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :goto_2
    const/4 v1, 0x0

    .line 564
    :cond_6
    invoke-virtual {p0}, Lcom/umeng/analytics/d/r;->o()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 565
    if-nez v1, :cond_7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_7
    const-string v1, "latitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget-wide v6, p0, Lcom/umeng/analytics/d/r;->d:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 568
    const/4 v1, 0x0

    .line 570
    :cond_8
    invoke-virtual {p0}, Lcom/umeng/analytics/d/r;->r()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 571
    if-nez v1, :cond_9

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_9
    const-string v1, "longitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    iget-wide v6, p0, Lcom/umeng/analytics/d/r;->e:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 574
    const/4 v1, 0x0

    .line 576
    :cond_a
    invoke-virtual {p0}, Lcom/umeng/analytics/d/r;->u()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 577
    if-nez v1, :cond_b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :cond_b
    const-string v1, "carrier:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    iget-object v1, p0, Lcom/umeng/analytics/d/r;->f:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 580
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 582
    :cond_c
    iget-object v1, p0, Lcom/umeng/analytics/d/r;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :goto_3
    const/4 v1, 0x0

    .line 586
    :cond_d
    invoke-virtual {p0}, Lcom/umeng/analytics/d/r;->x()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 587
    if-nez v1, :cond_e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :cond_e
    const-string v1, "latency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget v1, p0, Lcom/umeng/analytics/d/r;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    const/4 v1, 0x0

    .line 592
    :cond_f
    invoke-virtual {p0}, Lcom/umeng/analytics/d/r;->A()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 593
    if-nez v1, :cond_10

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :cond_10
    const-string v1, "display_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget-object v1, p0, Lcom/umeng/analytics/d/r;->h:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 596
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 598
    :cond_11
    iget-object v1, p0, Lcom/umeng/analytics/d/r;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    :goto_4
    const/4 v1, 0x0

    .line 602
    :cond_12
    invoke-virtual {p0}, Lcom/umeng/analytics/d/r;->D()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 603
    if-nez v1, :cond_13

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :cond_13
    const-string v1, "access_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget-object v1, p0, Lcom/umeng/analytics/d/r;->i:Lcom/umeng/analytics/d/a;

    if-nez v1, :cond_14

    .line 606
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 608
    :cond_14
    iget-object v1, p0, Lcom/umeng/analytics/d/r;->i:Lcom/umeng/analytics/d/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 610
    :goto_5
    const/4 v1, 0x0

    .line 612
    :cond_15
    invoke-virtual {p0}, Lcom/umeng/analytics/d/r;->G()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 613
    if-nez v1, :cond_16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_16
    const-string v1, "access_subtype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    iget-object v1, p0, Lcom/umeng/analytics/d/r;->j:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 616
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 618
    :cond_17
    iget-object v1, p0, Lcom/umeng/analytics/d/r;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :goto_6
    goto :goto_7

    .line 612
    :cond_18
    move v2, v1

    .line 622
    :goto_7
    invoke-virtual {p0}, Lcom/umeng/analytics/d/r;->J()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 623
    if-nez v2, :cond_19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_19
    const-string/jumbo v1, "user_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget-object v1, p0, Lcom/umeng/analytics/d/r;->k:Lcom/umeng/analytics/d/A;

    if-nez v1, :cond_1a

    .line 626
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 628
    :cond_1a
    iget-object v1, p0, Lcom/umeng/analytics/d/r;->k:Lcom/umeng/analytics/d/A;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 630
    :goto_8
    nop

    .line 632
    :cond_1b
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/umeng/analytics/d/r;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()I
    .locals 1

    .line 396
    iget v0, p0, Lcom/umeng/analytics/d/r;->g:I

    return v0
.end method

.method public w()V
    .locals 2

    .line 406
    iget-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    .line 407
    return-void
.end method

.method public x()Z
    .locals 2

    .line 411
    iget-byte v0, p0, Lcom/umeng/analytics/d/r;->D:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/umeng/analytics/d/r;->h:Ljava/lang/String;

    return-object v0
.end method

.method public z()V
    .locals 1

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/r;->h:Ljava/lang/String;

    .line 429
    return-void
.end method
