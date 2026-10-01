.class public Lcom/umeng/analytics/d/c;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/c$c;,
        Lcom/umeng/analytics/d/c$d;,
        Lcom/umeng/analytics/d/c$a;,
        Lcom/umeng/analytics/d/c$b;,
        Lcom/umeng/analytics/d/c$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/c;",
        "Lcom/umeng/analytics/d/c$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/analytics/d/c$e;",
            "Lcom/umeng/a/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lcom/umeng/a/a/a/b/m;

.field private static final m:Lcom/umeng/a/a/a/b/c;

.field private static final n:Lcom/umeng/a/a/a/b/c;

.field private static final o:Lcom/umeng/a/a/a/b/c;

.field private static final p:Lcom/umeng/a/a/a/b/c;

.field private static final q:Lcom/umeng/a/a/a/b/c;

.field private static final r:Lcom/umeng/a/a/a/b/c;

.field private static final s:Lcom/umeng/a/a/a/b/c;

.field private static final t:Lcom/umeng/a/a/a/b/c;

.field private static final u:Lcom/umeng/a/a/a/b/c;

.field private static final v:Lcom/umeng/a/a/a/b/c;

.field private static final w:Ljava/util/Map;
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

.field private static final x:I = 0x0

.field private static final y:I = 0x1


# instance fields
.field private A:[Lcom/umeng/analytics/d/c$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lcom/umeng/analytics/d/w;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field private z:B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "AppInfo"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/c;->l:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v1, "key"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/c;->m:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string/jumbo v4, "version"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v2, v5}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/c;->n:Lcom/umeng/a/a/a/b/c;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v6, 0x3

    const-string/jumbo v7, "version_index"

    const/16 v8, 0x8

    invoke-direct {v0, v7, v8, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/c;->o:Lcom/umeng/a/a/a/b/c;

    .line 37
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v6, 0x4

    const-string v9, "package_name"

    invoke-direct {v0, v9, v2, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/c;->p:Lcom/umeng/a/a/a/b/c;

    .line 38
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v6, 0x5

    const-string v10, "sdk_type"

    invoke-direct {v0, v10, v8, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/c;->q:Lcom/umeng/a/a/a/b/c;

    .line 39
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v6, 0x6

    const-string v11, "sdk_version"

    invoke-direct {v0, v11, v2, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/c;->r:Lcom/umeng/a/a/a/b/c;

    .line 40
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v6, 0x7

    const-string v12, "channel"

    invoke-direct {v0, v12, v2, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/c;->s:Lcom/umeng/a/a/a/b/c;

    .line 41
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string/jumbo v6, "wrapper_type"

    invoke-direct {v0, v6, v2, v8}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/c;->t:Lcom/umeng/a/a/a/b/c;

    .line 42
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/16 v13, 0x9

    const-string/jumbo v14, "wrapper_version"

    invoke-direct {v0, v14, v2, v13}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/c;->u:Lcom/umeng/a/a/a/b/c;

    .line 43
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/16 v13, 0xa

    const-string/jumbo v15, "vertical_type"

    invoke-direct {v0, v15, v8, v13}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/c;->v:Lcom/umeng/a/a/a/b/c;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/c;->w:Ljava/util/Map;

    .line 47
    sget-object v0, Lcom/umeng/analytics/d/c;->w:Ljava/util/Map;

    const-class v13, Lcom/umeng/a/a/a/c/c;

    new-instance v8, Lcom/umeng/analytics/d/c$b;

    const/4 v5, 0x0

    invoke-direct {v8, v5}, Lcom/umeng/analytics/d/c$b;-><init>(Lcom/umeng/analytics/d/c$1;)V

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/umeng/analytics/d/c;->w:Ljava/util/Map;

    const-class v8, Lcom/umeng/a/a/a/c/d;

    new-instance v13, Lcom/umeng/analytics/d/c$d;

    invoke-direct {v13, v5}, Lcom/umeng/analytics/d/c$d;-><init>(Lcom/umeng/analytics/d/c$1;)V

    invoke-interface {v0, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/util/EnumMap;

    const-class v5, Lcom/umeng/analytics/d/c$e;

    invoke-direct {v0, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 163
    sget-object v5, Lcom/umeng/analytics/d/c$e;->a:Lcom/umeng/analytics/d/c$e;

    new-instance v8, Lcom/umeng/a/a/a/a/b;

    new-instance v13, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v13, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v8, v1, v3, v13}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/umeng/analytics/d/c$e;->b:Lcom/umeng/analytics/d/c$e;

    new-instance v5, Lcom/umeng/a/a/a/a/b;

    new-instance v8, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v8, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    const/4 v13, 0x2

    invoke-direct {v5, v4, v13, v8}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lcom/umeng/analytics/d/c$e;->c:Lcom/umeng/analytics/d/c$e;

    new-instance v4, Lcom/umeng/a/a/a/a/b;

    new-instance v5, Lcom/umeng/a/a/a/a/c;

    const/16 v8, 0x8

    invoke-direct {v5, v8}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v7, v13, v5}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lcom/umeng/analytics/d/c$e;->d:Lcom/umeng/analytics/d/c$e;

    new-instance v4, Lcom/umeng/a/a/a/a/b;

    new-instance v5, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v5, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v9, v13, v5}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lcom/umeng/analytics/d/c$e;->e:Lcom/umeng/analytics/d/c$e;

    new-instance v4, Lcom/umeng/a/a/a/a/b;

    new-instance v5, Lcom/umeng/a/a/a/a/a;

    const/16 v7, 0x10

    const-class v8, Lcom/umeng/analytics/d/w;

    invoke-direct {v5, v7, v8}, Lcom/umeng/a/a/a/a/a;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v10, v3, v5}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lcom/umeng/analytics/d/c$e;->f:Lcom/umeng/analytics/d/c$e;

    new-instance v4, Lcom/umeng/a/a/a/a/b;

    new-instance v5, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v5, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v11, v3, v5}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lcom/umeng/analytics/d/c$e;->g:Lcom/umeng/analytics/d/c$e;

    new-instance v4, Lcom/umeng/a/a/a/a/b;

    new-instance v5, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v5, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v12, v3, v5}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lcom/umeng/analytics/d/c$e;->h:Lcom/umeng/analytics/d/c$e;

    new-instance v3, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    const/4 v13, 0x2

    invoke-direct {v3, v6, v13, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lcom/umeng/analytics/d/c$e;->i:Lcom/umeng/analytics/d/c$e;

    new-instance v3, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v3, v14, v13, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/umeng/analytics/d/c$e;->j:Lcom/umeng/analytics/d/c$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v3, Lcom/umeng/a/a/a/a/c;

    const/16 v8, 0x8

    invoke-direct {v3, v8}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v15, v13, v3}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/c;->k:Ljava/util/Map;

    .line 184
    const-class v0, Lcom/umeng/analytics/d/c;

    sget-object v1, Lcom/umeng/analytics/d/c;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 185
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/c;->z:B

    .line 159
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/umeng/analytics/d/c$e;

    sget-object v2, Lcom/umeng/analytics/d/c$e;->b:Lcom/umeng/analytics/d/c$e;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/umeng/analytics/d/c$e;->c:Lcom/umeng/analytics/d/c$e;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Lcom/umeng/analytics/d/c$e;->d:Lcom/umeng/analytics/d/c$e;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Lcom/umeng/analytics/d/c$e;->h:Lcom/umeng/analytics/d/c$e;

    aput-object v2, v1, v0

    const/4 v0, 0x4

    sget-object v2, Lcom/umeng/analytics/d/c$e;->i:Lcom/umeng/analytics/d/c$e;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    sget-object v2, Lcom/umeng/analytics/d/c$e;->j:Lcom/umeng/analytics/d/c$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/c;->A:[Lcom/umeng/analytics/d/c$e;

    .line 188
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/c;)V
    .locals 3

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/c;->z:B

    .line 159
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/umeng/analytics/d/c$e;

    sget-object v2, Lcom/umeng/analytics/d/c$e;->b:Lcom/umeng/analytics/d/c$e;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/umeng/analytics/d/c$e;->c:Lcom/umeng/analytics/d/c$e;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Lcom/umeng/analytics/d/c$e;->d:Lcom/umeng/analytics/d/c$e;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Lcom/umeng/analytics/d/c$e;->h:Lcom/umeng/analytics/d/c$e;

    aput-object v2, v1, v0

    const/4 v0, 0x4

    sget-object v2, Lcom/umeng/analytics/d/c$e;->i:Lcom/umeng/analytics/d/c$e;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    sget-object v2, Lcom/umeng/analytics/d/c$e;->j:Lcom/umeng/analytics/d/c$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/c;->A:[Lcom/umeng/analytics/d/c$e;

    .line 207
    iget-byte v0, p1, Lcom/umeng/analytics/d/c;->z:B

    iput-byte v0, p0, Lcom/umeng/analytics/d/c;->z:B

    .line 208
    invoke-virtual {p1}, Lcom/umeng/analytics/d/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p1, Lcom/umeng/analytics/d/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->a:Ljava/lang/String;

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/d/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p1, Lcom/umeng/analytics/d/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->b:Ljava/lang/String;

    .line 214
    :cond_1
    iget v0, p1, Lcom/umeng/analytics/d/c;->c:I

    iput v0, p0, Lcom/umeng/analytics/d/c;->c:I

    .line 215
    invoke-virtual {p1}, Lcom/umeng/analytics/d/c;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p1, Lcom/umeng/analytics/d/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->d:Ljava/lang/String;

    .line 218
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/analytics/d/c;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p1, Lcom/umeng/analytics/d/c;->e:Lcom/umeng/analytics/d/w;

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->e:Lcom/umeng/analytics/d/w;

    .line 221
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/analytics/d/c;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p1, Lcom/umeng/analytics/d/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->f:Ljava/lang/String;

    .line 224
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/analytics/d/c;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    iget-object v0, p1, Lcom/umeng/analytics/d/c;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->g:Ljava/lang/String;

    .line 227
    :cond_5
    invoke-virtual {p1}, Lcom/umeng/analytics/d/c;->A()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 228
    iget-object v0, p1, Lcom/umeng/analytics/d/c;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->h:Ljava/lang/String;

    .line 230
    :cond_6
    invoke-virtual {p1}, Lcom/umeng/analytics/d/c;->D()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 231
    iget-object v0, p1, Lcom/umeng/analytics/d/c;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->i:Ljava/lang/String;

    .line 233
    :cond_7
    iget p1, p1, Lcom/umeng/analytics/d/c;->j:I

    iput p1, p0, Lcom/umeng/analytics/d/c;->j:I

    .line 234
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/umeng/analytics/d/w;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/umeng/analytics/d/c;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/umeng/analytics/d/c;->a:Ljava/lang/String;

    .line 198
    iput-object p2, p0, Lcom/umeng/analytics/d/c;->e:Lcom/umeng/analytics/d/w;

    .line 199
    iput-object p3, p0, Lcom/umeng/analytics/d/c;->f:Ljava/lang/String;

    .line 200
    iput-object p4, p0, Lcom/umeng/analytics/d/c;->g:Ljava/lang/String;

    .line 201
    return-void
.end method

.method static synthetic I()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/c;->l:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic J()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/c;->m:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic K()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/c;->n:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic L()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/c;->o:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic M()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/c;->p:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic N()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/c;->q:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic O()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/c;->r:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic P()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/c;->s:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic Q()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/c;->t:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic R()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/c;->u:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic S()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/c;->v:Lcom/umeng/a/a/a/b/c;

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

    .line 634
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/d/c;->z:B

    .line 635
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/c;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    nop

    .line 639
    return-void

    .line 636
    :catch_0
    move-exception p1

    .line 637
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

    .line 625
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/c;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    nop

    .line 629
    return-void

    .line 626
    :catch_0
    move-exception p1

    .line 627
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public C()V
    .locals 1

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->i:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public D()Z
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()I
    .locals 1

    .line 480
    iget v0, p0, Lcom/umeng/analytics/d/c;->j:I

    return v0
.end method

.method public F()V
    .locals 2

    .line 490
    iget-byte v0, p0, Lcom/umeng/analytics/d/c;->z:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/c;->z:B

    .line 491
    return-void
.end method

.method public G()Z
    .locals 2

    .line 495
    iget-byte v0, p0, Lcom/umeng/analytics/d/c;->z:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public H()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 611
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->e:Lcom/umeng/analytics/d/w;

    if-eqz v0, :cond_2

    .line 614
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 621
    return-void

    .line 618
    :cond_0
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'channel\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_1
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'sdk_version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_2
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'sdk_type\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_3
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'key\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Lcom/umeng/analytics/d/c;
    .locals 1

    .line 237
    new-instance v0, Lcom/umeng/analytics/d/c;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/c;-><init>(Lcom/umeng/analytics/d/c;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/analytics/d/c;
    .locals 0

    .line 309
    iput p1, p0, Lcom/umeng/analytics/d/c;->c:I

    .line 310
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/c;->c(Z)V

    .line 311
    return-object p0
.end method

.method public a(Lcom/umeng/analytics/d/w;)Lcom/umeng/analytics/d/c;
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/umeng/analytics/d/c;->e:Lcom/umeng/analytics/d/w;

    .line 365
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/d/c;
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/umeng/analytics/d/c;->a:Ljava/lang/String;

    .line 262
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 507
    sget-object v0, Lcom/umeng/analytics/d/c;->w:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 508
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 275
    if-nez p1, :cond_0

    .line 276
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/c;->a:Ljava/lang/String;

    .line 278
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/c;->d(I)Lcom/umeng/analytics/d/c$e;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/analytics/d/c;
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/umeng/analytics/d/c;->b:Ljava/lang/String;

    .line 286
    return-object p0
.end method

.method public b()V
    .locals 2

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->a:Ljava/lang/String;

    .line 243
    iput-object v0, p0, Lcom/umeng/analytics/d/c;->b:Ljava/lang/String;

    .line 244
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/d/c;->c(Z)V

    .line 245
    iput v1, p0, Lcom/umeng/analytics/d/c;->c:I

    .line 246
    iput-object v0, p0, Lcom/umeng/analytics/d/c;->d:Ljava/lang/String;

    .line 247
    iput-object v0, p0, Lcom/umeng/analytics/d/c;->e:Lcom/umeng/analytics/d/w;

    .line 248
    iput-object v0, p0, Lcom/umeng/analytics/d/c;->f:Ljava/lang/String;

    .line 249
    iput-object v0, p0, Lcom/umeng/analytics/d/c;->g:Ljava/lang/String;

    .line 250
    iput-object v0, p0, Lcom/umeng/analytics/d/c;->h:Ljava/lang/String;

    .line 251
    iput-object v0, p0, Lcom/umeng/analytics/d/c;->i:Ljava/lang/String;

    .line 252
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/d/c;->j(Z)V

    .line 253
    iput v1, p0, Lcom/umeng/analytics/d/c;->j:I

    .line 254
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 511
    sget-object v0, Lcom/umeng/analytics/d/c;->w:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 512
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 299
    if-nez p1, :cond_0

    .line 300
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/c;->b:Ljava/lang/String;

    .line 302
    :cond_0
    return-void
.end method

.method public c(I)Lcom/umeng/analytics/d/c;
    .locals 0

    .line 484
    iput p1, p0, Lcom/umeng/analytics/d/c;->j:I

    .line 485
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/c;->j(Z)V

    .line 486
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/umeng/analytics/d/c;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/umeng/analytics/d/c;->d:Ljava/lang/String;

    .line 333
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .line 324
    iget-byte v0, p0, Lcom/umeng/analytics/d/c;->z:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/c;->z:B

    .line 325
    return-void
.end method

.method public d(I)Lcom/umeng/analytics/d/c$e;
    .locals 0

    .line 503
    invoke-static {p1}, Lcom/umeng/analytics/d/c$e;->a(I)Lcom/umeng/analytics/d/c$e;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lcom/umeng/analytics/d/c;
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/umeng/analytics/d/c;->f:Ljava/lang/String;

    .line 389
    return-object p0
.end method

.method public d()V
    .locals 1

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->a:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 346
    if-nez p1, :cond_0

    .line 347
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/c;->d:Ljava/lang/String;

    .line 349
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/umeng/analytics/d/c;
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/umeng/analytics/d/c;->g:Ljava/lang/String;

    .line 413
    return-object p0
.end method

.method public e(Z)V
    .locals 0

    .line 378
    if-nez p1, :cond_0

    .line 379
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/c;->e:Lcom/umeng/analytics/d/w;

    .line 381
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/umeng/analytics/d/c;
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/umeng/analytics/d/c;->h:Ljava/lang/String;

    .line 437
    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    .line 402
    if-nez p1, :cond_0

    .line 403
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/c;->f:Ljava/lang/String;

    .line 405
    :cond_0
    return-void
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/c;->a()Lcom/umeng/analytics/d/c;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/umeng/analytics/d/c;
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/umeng/analytics/d/c;->i:Ljava/lang/String;

    .line 461
    return-object p0
.end method

.method public g(Z)V
    .locals 0

    .line 426
    if-nez p1, :cond_0

    .line 427
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/c;->g:Ljava/lang/String;

    .line 429
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->b:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 450
    if-nez p1, :cond_0

    .line 451
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/c;->h:Ljava/lang/String;

    .line 453
    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 474
    if-nez p1, :cond_0

    .line 475
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/c;->i:Ljava/lang/String;

    .line 477
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/umeng/analytics/d/c;->c:I

    return v0
.end method

.method public j(Z)V
    .locals 2

    .line 499
    iget-byte v0, p0, Lcom/umeng/analytics/d/c;->z:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/c;->z:B

    .line 500
    return-void
.end method

.method public k()V
    .locals 2

    .line 315
    iget-byte v0, p0, Lcom/umeng/analytics/d/c;->z:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/c;->z:B

    .line 316
    return-void
.end method

.method public l()Z
    .locals 2

    .line 320
    iget-byte v0, p0, Lcom/umeng/analytics/d/c;->z:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public n()V
    .locals 1

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->d:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public o()Z
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Lcom/umeng/analytics/d/w;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->e:Lcom/umeng/analytics/d/w;

    return-object v0
.end method

.method public q()V
    .locals 1

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->e:Lcom/umeng/analytics/d/w;

    .line 370
    return-void
.end method

.method public r()Z
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->e:Lcom/umeng/analytics/d/w;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public t()V
    .locals 1

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->f:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    nop

    .line 519
    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    iget-object v1, p0, Lcom/umeng/analytics/d/c;->a:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 521
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/d/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :goto_0
    nop

    .line 526
    invoke-virtual {p0}, Lcom/umeng/analytics/d/c;->i()Z

    move-result v1

    const-string v3, ", "

    if-eqz v1, :cond_2

    .line 527
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string/jumbo v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    iget-object v1, p0, Lcom/umeng/analytics/d/c;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 530
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/d/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :goto_1
    nop

    .line 536
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/d/c;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 537
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string/jumbo v1, "version_index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    iget v1, p0, Lcom/umeng/analytics/d/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    nop

    .line 542
    :cond_3
    invoke-virtual {p0}, Lcom/umeng/analytics/d/c;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 543
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const-string v1, "package_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget-object v1, p0, Lcom/umeng/analytics/d/c;->d:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 546
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 548
    :cond_4
    iget-object v1, p0, Lcom/umeng/analytics/d/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :goto_2
    nop

    .line 552
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const-string v1, "sdk_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget-object v1, p0, Lcom/umeng/analytics/d/c;->e:Lcom/umeng/analytics/d/w;

    if-nez v1, :cond_6

    .line 555
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 557
    :cond_6
    iget-object v1, p0, Lcom/umeng/analytics/d/c;->e:Lcom/umeng/analytics/d/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 559
    :goto_3
    nop

    .line 560
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string v1, "sdk_version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    iget-object v1, p0, Lcom/umeng/analytics/d/c;->f:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 563
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 565
    :cond_7
    iget-object v1, p0, Lcom/umeng/analytics/d/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :goto_4
    nop

    .line 568
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string v1, "channel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v1, p0, Lcom/umeng/analytics/d/c;->g:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 571
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 573
    :cond_8
    iget-object v1, p0, Lcom/umeng/analytics/d/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :goto_5
    nop

    .line 576
    invoke-virtual {p0}, Lcom/umeng/analytics/d/c;->A()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 577
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string/jumbo v1, "wrapper_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    iget-object v1, p0, Lcom/umeng/analytics/d/c;->h:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 580
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 582
    :cond_9
    iget-object v1, p0, Lcom/umeng/analytics/d/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :goto_6
    nop

    .line 586
    :cond_a
    invoke-virtual {p0}, Lcom/umeng/analytics/d/c;->D()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 587
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string/jumbo v1, "wrapper_version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object v1, p0, Lcom/umeng/analytics/d/c;->i:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 590
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 592
    :cond_b
    iget-object v1, p0, Lcom/umeng/analytics/d/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :goto_7
    nop

    .line 596
    :cond_c
    invoke-virtual {p0}, Lcom/umeng/analytics/d/c;->G()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 597
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string/jumbo v1, "vertical_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    iget v1, p0, Lcom/umeng/analytics/d/c;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 600
    nop

    .line 602
    :cond_d
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public w()V
    .locals 1

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->g:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public x()Z
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/umeng/analytics/d/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public z()V
    .locals 1

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/c;->h:Ljava/lang/String;

    .line 442
    return-void
.end method
