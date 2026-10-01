.class public Lcom/umeng/analytics/d/z;
.super Ljava/lang/Object;
.source "UALogEntry.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/z$c;,
        Lcom/umeng/analytics/d/z$d;,
        Lcom/umeng/analytics/d/z$a;,
        Lcom/umeng/analytics/d/z$b;,
        Lcom/umeng/analytics/d/z$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/z;",
        "Lcom/umeng/analytics/d/z$e;",
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
            "Lcom/umeng/analytics/d/z$e;",
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


# instance fields
.field public a:Lcom/umeng/analytics/d/d;

.field public b:Lcom/umeng/analytics/d/c;

.field public c:Lcom/umeng/analytics/d/e;

.field public d:Lcom/umeng/analytics/d/r;

.field public e:Lcom/umeng/analytics/d/b;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/p;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/x;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/umeng/analytics/d/n;

.field public i:Lcom/umeng/analytics/d/m;

.field private v:[Lcom/umeng/analytics/d/z$e;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "UALogEntry"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/z;->k:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v1, "client_stats"

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/z;->l:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v4, "app_info"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v2, v5}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/z;->m:Lcom/umeng/a/a/a/b/c;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v6, 0x3

    const-string v7, "device_info"

    invoke-direct {v0, v7, v2, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/z;->n:Lcom/umeng/a/a/a/b/c;

    .line 37
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v6, 0x4

    const-string v8, "misc_info"

    invoke-direct {v0, v8, v2, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/z;->o:Lcom/umeng/a/a/a/b/c;

    .line 38
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v6, 0x5

    const-string v9, "activate_msg"

    invoke-direct {v0, v9, v2, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/z;->p:Lcom/umeng/a/a/a/b/c;

    .line 39
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v6, 0x6

    const-string v10, "instant_msgs"

    const/16 v11, 0xf

    invoke-direct {v0, v10, v11, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/z;->q:Lcom/umeng/a/a/a/b/c;

    .line 40
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v6, 0x7

    const-string v12, "sessions"

    invoke-direct {v0, v12, v11, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/z;->r:Lcom/umeng/a/a/a/b/c;

    .line 41
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/16 v6, 0x8

    const-string v13, "imprint"

    invoke-direct {v0, v13, v2, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/z;->s:Lcom/umeng/a/a/a/b/c;

    .line 42
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/16 v6, 0x9

    const-string v14, "id_tracking"

    invoke-direct {v0, v14, v2, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/z;->t:Lcom/umeng/a/a/a/b/c;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/z;->u:Ljava/util/Map;

    .line 46
    sget-object v0, Lcom/umeng/analytics/d/z;->u:Ljava/util/Map;

    const-class v6, Lcom/umeng/a/a/a/c/c;

    new-instance v15, Lcom/umeng/analytics/d/z$b;

    const/4 v11, 0x0

    invoke-direct {v15, v11}, Lcom/umeng/analytics/d/z$b;-><init>(Lcom/umeng/analytics/d/z$1;)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/umeng/analytics/d/z;->u:Ljava/util/Map;

    const-class v6, Lcom/umeng/a/a/a/c/d;

    new-instance v15, Lcom/umeng/analytics/d/z$d;

    invoke-direct {v15, v11}, Lcom/umeng/analytics/d/z$d;-><init>(Lcom/umeng/analytics/d/z$1;)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v0, Ljava/util/EnumMap;

    const-class v6, Lcom/umeng/analytics/d/z$e;

    invoke-direct {v0, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 147
    sget-object v6, Lcom/umeng/analytics/d/z$e;->a:Lcom/umeng/analytics/d/z$e;

    new-instance v11, Lcom/umeng/a/a/a/a/b;

    new-instance v15, Lcom/umeng/a/a/a/a/g;

    const-class v5, Lcom/umeng/analytics/d/d;

    invoke-direct {v15, v2, v5}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v11, v1, v3, v15}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lcom/umeng/analytics/d/z$e;->b:Lcom/umeng/analytics/d/z$e;

    new-instance v5, Lcom/umeng/a/a/a/a/b;

    new-instance v6, Lcom/umeng/a/a/a/a/g;

    const-class v11, Lcom/umeng/analytics/d/c;

    invoke-direct {v6, v2, v11}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v5, v4, v3, v6}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lcom/umeng/analytics/d/z$e;->c:Lcom/umeng/analytics/d/z$e;

    new-instance v4, Lcom/umeng/a/a/a/a/b;

    new-instance v5, Lcom/umeng/a/a/a/a/g;

    const-class v6, Lcom/umeng/analytics/d/e;

    invoke-direct {v5, v2, v6}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v7, v3, v5}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lcom/umeng/analytics/d/z$e;->d:Lcom/umeng/analytics/d/z$e;

    new-instance v4, Lcom/umeng/a/a/a/a/b;

    new-instance v5, Lcom/umeng/a/a/a/a/g;

    const-class v6, Lcom/umeng/analytics/d/r;

    invoke-direct {v5, v2, v6}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v8, v3, v5}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/umeng/analytics/d/z$e;->e:Lcom/umeng/analytics/d/z$e;

    new-instance v3, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/g;

    const-class v5, Lcom/umeng/analytics/d/b;

    invoke-direct {v4, v2, v5}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    const/4 v5, 0x2

    invoke-direct {v3, v9, v5, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lcom/umeng/analytics/d/z$e;->f:Lcom/umeng/analytics/d/z$e;

    new-instance v3, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/d;

    new-instance v6, Lcom/umeng/a/a/a/a/g;

    const-class v7, Lcom/umeng/analytics/d/p;

    invoke-direct {v6, v2, v7}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    const/16 v7, 0xf

    invoke-direct {v4, v7, v6}, Lcom/umeng/a/a/a/a/d;-><init>(BLcom/umeng/a/a/a/a/c;)V

    invoke-direct {v3, v10, v5, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/umeng/analytics/d/z$e;->g:Lcom/umeng/analytics/d/z$e;

    new-instance v3, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/d;

    new-instance v6, Lcom/umeng/a/a/a/a/g;

    const-class v8, Lcom/umeng/analytics/d/x;

    invoke-direct {v6, v2, v8}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v7, v6}, Lcom/umeng/a/a/a/a/d;-><init>(BLcom/umeng/a/a/a/a/c;)V

    invoke-direct {v3, v12, v5, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lcom/umeng/analytics/d/z$e;->h:Lcom/umeng/analytics/d/z$e;

    new-instance v3, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/g;

    const-class v6, Lcom/umeng/analytics/d/n;

    invoke-direct {v4, v2, v6}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v3, v13, v5, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/umeng/analytics/d/z$e;->i:Lcom/umeng/analytics/d/z$e;

    new-instance v3, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/g;

    const-class v6, Lcom/umeng/analytics/d/m;

    invoke-direct {v4, v2, v6}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v3, v14, v5, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/z;->j:Ljava/util/Map;

    .line 168
    const-class v0, Lcom/umeng/analytics/d/z;

    sget-object v1, Lcom/umeng/analytics/d/z;->j:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 169
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/umeng/analytics/d/z$e;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/analytics/d/z$e;->e:Lcom/umeng/analytics/d/z$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/umeng/analytics/d/z$e;->f:Lcom/umeng/analytics/d/z$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/umeng/analytics/d/z$e;->g:Lcom/umeng/analytics/d/z$e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/umeng/analytics/d/z$e;->h:Lcom/umeng/analytics/d/z$e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/umeng/analytics/d/z$e;->i:Lcom/umeng/analytics/d/z$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->v:[Lcom/umeng/analytics/d/z$e;

    .line 172
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/d;Lcom/umeng/analytics/d/c;Lcom/umeng/analytics/d/e;Lcom/umeng/analytics/d/r;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/umeng/analytics/d/z;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/umeng/analytics/d/z;->a:Lcom/umeng/analytics/d/d;

    .line 182
    iput-object p2, p0, Lcom/umeng/analytics/d/z;->b:Lcom/umeng/analytics/d/c;

    .line 183
    iput-object p3, p0, Lcom/umeng/analytics/d/z;->c:Lcom/umeng/analytics/d/e;

    .line 184
    iput-object p4, p0, Lcom/umeng/analytics/d/z;->d:Lcom/umeng/analytics/d/r;

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/z;)V
    .locals 4

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/umeng/analytics/d/z$e;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/analytics/d/z$e;->e:Lcom/umeng/analytics/d/z$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/umeng/analytics/d/z$e;->f:Lcom/umeng/analytics/d/z$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/umeng/analytics/d/z$e;->g:Lcom/umeng/analytics/d/z$e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/umeng/analytics/d/z$e;->h:Lcom/umeng/analytics/d/z$e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/umeng/analytics/d/z$e;->i:Lcom/umeng/analytics/d/z$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->v:[Lcom/umeng/analytics/d/z$e;

    .line 191
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Lcom/umeng/analytics/d/d;

    iget-object v1, p1, Lcom/umeng/analytics/d/z;->a:Lcom/umeng/analytics/d/d;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/d/d;-><init>(Lcom/umeng/analytics/d/d;)V

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->a:Lcom/umeng/analytics/d/d;

    .line 194
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    new-instance v0, Lcom/umeng/analytics/d/c;

    iget-object v1, p1, Lcom/umeng/analytics/d/z;->b:Lcom/umeng/analytics/d/c;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/d/c;-><init>(Lcom/umeng/analytics/d/c;)V

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->b:Lcom/umeng/analytics/d/c;

    .line 197
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    new-instance v0, Lcom/umeng/analytics/d/e;

    iget-object v1, p1, Lcom/umeng/analytics/d/z;->c:Lcom/umeng/analytics/d/e;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/d/e;-><init>(Lcom/umeng/analytics/d/e;)V

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->c:Lcom/umeng/analytics/d/e;

    .line 200
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    new-instance v0, Lcom/umeng/analytics/d/r;

    iget-object v1, p1, Lcom/umeng/analytics/d/z;->d:Lcom/umeng/analytics/d/r;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/d/r;-><init>(Lcom/umeng/analytics/d/r;)V

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->d:Lcom/umeng/analytics/d/r;

    .line 203
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    new-instance v0, Lcom/umeng/analytics/d/b;

    iget-object v1, p1, Lcom/umeng/analytics/d/z;->e:Lcom/umeng/analytics/d/b;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/d/b;-><init>(Lcom/umeng/analytics/d/b;)V

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->e:Lcom/umeng/analytics/d/b;

    .line 206
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget-object v1, p1, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/d/p;

    .line 209
    new-instance v3, Lcom/umeng/analytics/d/p;

    invoke-direct {v3, v2}, Lcom/umeng/analytics/d/p;-><init>(Lcom/umeng/analytics/d/p;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    goto :goto_0

    .line 211
    :cond_5
    iput-object v0, p0, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    .line 213
    :cond_6
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->B()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    iget-object v1, p1, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/d/x;

    .line 216
    new-instance v3, Lcom/umeng/analytics/d/x;

    invoke-direct {v3, v2}, Lcom/umeng/analytics/d/x;-><init>(Lcom/umeng/analytics/d/x;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    goto :goto_1

    .line 218
    :cond_7
    iput-object v0, p0, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    .line 220
    :cond_8
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->E()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 221
    new-instance v0, Lcom/umeng/analytics/d/n;

    iget-object v1, p1, Lcom/umeng/analytics/d/z;->h:Lcom/umeng/analytics/d/n;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/d/n;-><init>(Lcom/umeng/analytics/d/n;)V

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->h:Lcom/umeng/analytics/d/n;

    .line 223
    :cond_9
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->H()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 224
    new-instance v0, Lcom/umeng/analytics/d/m;

    iget-object p1, p1, Lcom/umeng/analytics/d/z;->i:Lcom/umeng/analytics/d/m;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/d/m;-><init>(Lcom/umeng/analytics/d/m;)V

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->i:Lcom/umeng/analytics/d/m;

    .line 226
    :cond_a
    return-void
.end method

.method static synthetic J()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/z;->k:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic K()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/z;->l:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic L()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/z;->m:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic M()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/z;->n:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic N()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/z;->o:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic O()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/z;->p:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic P()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/z;->q:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic Q()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/z;->r:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic R()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/z;->s:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic S()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/z;->t:Lcom/umeng/a/a/a/b/c;

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

    .line 641
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/z;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    nop

    .line 645
    return-void

    .line 642
    :catch_0
    move-exception p1

    .line 643
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

    .line 633
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/z;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    nop

    .line 637
    return-void

    .line 634
    :catch_0
    move-exception p1

    .line 635
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    .line 430
    return-void
.end method

.method public B()Z
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()Lcom/umeng/analytics/d/n;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->h:Lcom/umeng/analytics/d/n;

    return-object v0
.end method

.method public D()V
    .locals 1

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->h:Lcom/umeng/analytics/d/n;

    .line 454
    return-void
.end method

.method public E()Z
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->h:Lcom/umeng/analytics/d/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()Lcom/umeng/analytics/d/m;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->i:Lcom/umeng/analytics/d/m;

    return-object v0
.end method

.method public G()V
    .locals 1

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->i:Lcom/umeng/analytics/d/m;

    .line 478
    return-void
.end method

.method public H()Z
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->i:Lcom/umeng/analytics/d/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->a:Lcom/umeng/analytics/d/d;

    if-eqz v0, :cond_a

    .line 598
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->b:Lcom/umeng/analytics/d/c;

    if-eqz v0, :cond_9

    .line 601
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->c:Lcom/umeng/analytics/d/e;

    if-eqz v0, :cond_8

    .line 604
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->d:Lcom/umeng/analytics/d/r;

    if-eqz v0, :cond_7

    .line 608
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->a:Lcom/umeng/analytics/d/d;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->a:Lcom/umeng/analytics/d/d;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/d;->m()V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->b:Lcom/umeng/analytics/d/c;

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->b:Lcom/umeng/analytics/d/c;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/c;->H()V

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->c:Lcom/umeng/analytics/d/e;

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->c:Lcom/umeng/analytics/d/e;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/e;->ac()V

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->d:Lcom/umeng/analytics/d/r;

    if-eqz v0, :cond_3

    .line 618
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->d:Lcom/umeng/analytics/d/r;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/r;->K()V

    .line 620
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->e:Lcom/umeng/analytics/d/b;

    if-eqz v0, :cond_4

    .line 621
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->e:Lcom/umeng/analytics/d/b;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/b;->f()V

    .line 623
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->h:Lcom/umeng/analytics/d/n;

    if-eqz v0, :cond_5

    .line 624
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->h:Lcom/umeng/analytics/d/n;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/n;->n()V

    .line 626
    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->i:Lcom/umeng/analytics/d/m;

    if-eqz v0, :cond_6

    .line 627
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->i:Lcom/umeng/analytics/d/m;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/m;->p()V

    .line 629
    :cond_6
    return-void

    .line 605
    :cond_7
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'misc_info\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_8
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'device_info\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_9
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'app_info\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_a
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'client_stats\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)Lcom/umeng/analytics/d/z$e;
    .locals 0

    .line 492
    invoke-static {p1}, Lcom/umeng/analytics/d/z$e;->a(I)Lcom/umeng/analytics/d/z$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/umeng/analytics/d/z;
    .locals 1

    .line 229
    new-instance v0, Lcom/umeng/analytics/d/z;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/z;-><init>(Lcom/umeng/analytics/d/z;)V

    return-object v0
.end method

.method public a(Lcom/umeng/analytics/d/b;)Lcom/umeng/analytics/d/z;
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/umeng/analytics/d/z;->e:Lcom/umeng/analytics/d/b;

    .line 347
    return-object p0
.end method

.method public a(Lcom/umeng/analytics/d/c;)Lcom/umeng/analytics/d/z;
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/umeng/analytics/d/z;->b:Lcom/umeng/analytics/d/c;

    .line 275
    return-object p0
.end method

.method public a(Lcom/umeng/analytics/d/d;)Lcom/umeng/analytics/d/z;
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/umeng/analytics/d/z;->a:Lcom/umeng/analytics/d/d;

    .line 251
    return-object p0
.end method

.method public a(Lcom/umeng/analytics/d/e;)Lcom/umeng/analytics/d/z;
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/umeng/analytics/d/z;->c:Lcom/umeng/analytics/d/e;

    .line 299
    return-object p0
.end method

.method public a(Lcom/umeng/analytics/d/m;)Lcom/umeng/analytics/d/z;
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/umeng/analytics/d/z;->i:Lcom/umeng/analytics/d/m;

    .line 473
    return-object p0
.end method

.method public a(Lcom/umeng/analytics/d/n;)Lcom/umeng/analytics/d/z;
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/umeng/analytics/d/z;->h:Lcom/umeng/analytics/d/n;

    .line 449
    return-object p0
.end method

.method public a(Lcom/umeng/analytics/d/r;)Lcom/umeng/analytics/d/z;
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/umeng/analytics/d/z;->d:Lcom/umeng/analytics/d/r;

    .line 323
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/umeng/analytics/d/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/p;",
            ">;)",
            "Lcom/umeng/analytics/d/z;"
        }
    .end annotation

    .line 385
    iput-object p1, p0, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    .line 386
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 496
    sget-object v0, Lcom/umeng/analytics/d/z;->u:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 497
    return-void
.end method

.method public a(Lcom/umeng/analytics/d/p;)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    return-void
.end method

.method public a(Lcom/umeng/analytics/d/x;)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 264
    if-nez p1, :cond_0

    .line 265
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/z;->a:Lcom/umeng/analytics/d/d;

    .line 267
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/z;->a(I)Lcom/umeng/analytics/d/z$e;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)Lcom/umeng/analytics/d/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/x;",
            ">;)",
            "Lcom/umeng/analytics/d/z;"
        }
    .end annotation

    .line 424
    iput-object p1, p0, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    .line 425
    return-object p0
.end method

.method public b()V
    .locals 1

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->a:Lcom/umeng/analytics/d/d;

    .line 235
    iput-object v0, p0, Lcom/umeng/analytics/d/z;->b:Lcom/umeng/analytics/d/c;

    .line 236
    iput-object v0, p0, Lcom/umeng/analytics/d/z;->c:Lcom/umeng/analytics/d/e;

    .line 237
    iput-object v0, p0, Lcom/umeng/analytics/d/z;->d:Lcom/umeng/analytics/d/r;

    .line 238
    iput-object v0, p0, Lcom/umeng/analytics/d/z;->e:Lcom/umeng/analytics/d/b;

    .line 239
    iput-object v0, p0, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    .line 240
    iput-object v0, p0, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    .line 241
    iput-object v0, p0, Lcom/umeng/analytics/d/z;->h:Lcom/umeng/analytics/d/n;

    .line 242
    iput-object v0, p0, Lcom/umeng/analytics/d/z;->i:Lcom/umeng/analytics/d/m;

    .line 243
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 500
    sget-object v0, Lcom/umeng/analytics/d/z;->u:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 501
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 288
    if-nez p1, :cond_0

    .line 289
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/z;->b:Lcom/umeng/analytics/d/c;

    .line 291
    :cond_0
    return-void
.end method

.method public c()Lcom/umeng/analytics/d/d;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->a:Lcom/umeng/analytics/d/d;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .line 312
    if-nez p1, :cond_0

    .line 313
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/z;->c:Lcom/umeng/analytics/d/e;

    .line 315
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->a:Lcom/umeng/analytics/d/d;

    .line 256
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 336
    if-nez p1, :cond_0

    .line 337
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/z;->d:Lcom/umeng/analytics/d/r;

    .line 339
    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 360
    if-nez p1, :cond_0

    .line 361
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/z;->e:Lcom/umeng/analytics/d/b;

    .line 363
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->a:Lcom/umeng/analytics/d/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lcom/umeng/analytics/d/c;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->b:Lcom/umeng/analytics/d/c;

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    .line 399
    if-nez p1, :cond_0

    .line 400
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    .line 402
    :cond_0
    return-void
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/z;->a()Lcom/umeng/analytics/d/z;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 0

    .line 438
    if-nez p1, :cond_0

    .line 439
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    .line 441
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->b:Lcom/umeng/analytics/d/c;

    .line 280
    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 462
    if-nez p1, :cond_0

    .line 463
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/z;->h:Lcom/umeng/analytics/d/n;

    .line 465
    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 486
    if-nez p1, :cond_0

    .line 487
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/z;->i:Lcom/umeng/analytics/d/m;

    .line 489
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->b:Lcom/umeng/analytics/d/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Lcom/umeng/analytics/d/e;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->c:Lcom/umeng/analytics/d/e;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->c:Lcom/umeng/analytics/d/e;

    .line 304
    return-void
.end method

.method public l()Z
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->c:Lcom/umeng/analytics/d/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Lcom/umeng/analytics/d/r;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->d:Lcom/umeng/analytics/d/r;

    return-object v0
.end method

.method public n()V
    .locals 1

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->d:Lcom/umeng/analytics/d/r;

    .line 328
    return-void
.end method

.method public o()Z
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->d:Lcom/umeng/analytics/d/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Lcom/umeng/analytics/d/b;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->e:Lcom/umeng/analytics/d/b;

    return-object v0
.end method

.method public q()V
    .locals 1

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->e:Lcom/umeng/analytics/d/b;

    .line 352
    return-void
.end method

.method public r()Z
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->e:Lcom/umeng/analytics/d/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public t()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/umeng/analytics/d/p;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UALogEntry("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    nop

    .line 508
    const-string v1, "client_stats:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget-object v1, p0, Lcom/umeng/analytics/d/z;->a:Lcom/umeng/analytics/d/d;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/d/z;->a:Lcom/umeng/analytics/d/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    :goto_0
    nop

    .line 515
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v3, "app_info:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    iget-object v3, p0, Lcom/umeng/analytics/d/z;->b:Lcom/umeng/analytics/d/c;

    if-nez v3, :cond_1

    .line 518
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 520
    :cond_1
    iget-object v3, p0, Lcom/umeng/analytics/d/z;->b:Lcom/umeng/analytics/d/c;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 522
    :goto_1
    nop

    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string v3, "device_info:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    iget-object v3, p0, Lcom/umeng/analytics/d/z;->c:Lcom/umeng/analytics/d/e;

    if-nez v3, :cond_2

    .line 526
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 528
    :cond_2
    iget-object v3, p0, Lcom/umeng/analytics/d/z;->c:Lcom/umeng/analytics/d/e;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 530
    :goto_2
    nop

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const-string v3, "misc_info:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    iget-object v3, p0, Lcom/umeng/analytics/d/z;->d:Lcom/umeng/analytics/d/r;

    if-nez v3, :cond_3

    .line 534
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 536
    :cond_3
    iget-object v3, p0, Lcom/umeng/analytics/d/z;->d:Lcom/umeng/analytics/d/r;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 538
    :goto_3
    nop

    .line 539
    invoke-virtual {p0}, Lcom/umeng/analytics/d/z;->r()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string v3, "activate_msg:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget-object v3, p0, Lcom/umeng/analytics/d/z;->e:Lcom/umeng/analytics/d/b;

    if-nez v3, :cond_4

    .line 543
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 545
    :cond_4
    iget-object v3, p0, Lcom/umeng/analytics/d/z;->e:Lcom/umeng/analytics/d/b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 547
    :goto_4
    nop

    .line 549
    :cond_5
    invoke-virtual {p0}, Lcom/umeng/analytics/d/z;->w()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v3, "instant_msgs:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    iget-object v3, p0, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    if-nez v3, :cond_6

    .line 553
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 555
    :cond_6
    iget-object v3, p0, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 557
    :goto_5
    nop

    .line 559
    :cond_7
    invoke-virtual {p0}, Lcom/umeng/analytics/d/z;->B()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string v3, "sessions:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    iget-object v3, p0, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    if-nez v3, :cond_8

    .line 563
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 565
    :cond_8
    iget-object v3, p0, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 567
    :goto_6
    nop

    .line 569
    :cond_9
    invoke-virtual {p0}, Lcom/umeng/analytics/d/z;->E()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const-string v3, "imprint:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    iget-object v3, p0, Lcom/umeng/analytics/d/z;->h:Lcom/umeng/analytics/d/n;

    if-nez v3, :cond_a

    .line 573
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 575
    :cond_a
    iget-object v3, p0, Lcom/umeng/analytics/d/z;->h:Lcom/umeng/analytics/d/n;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 577
    :goto_7
    nop

    .line 579
    :cond_b
    invoke-virtual {p0}, Lcom/umeng/analytics/d/z;->H()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const-string v1, "id_tracking:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    iget-object v1, p0, Lcom/umeng/analytics/d/z;->i:Lcom/umeng/analytics/d/m;

    if-nez v1, :cond_c

    .line 583
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 585
    :cond_c
    iget-object v1, p0, Lcom/umeng/analytics/d/z;->i:Lcom/umeng/analytics/d/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 587
    :goto_8
    nop

    .line 589
    :cond_d
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/p;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    return-object v0
.end method

.method public v()V
    .locals 1

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    .line 391
    return-void
.end method

.method public w()Z
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()I
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public y()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/umeng/analytics/d/x;",
            ">;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/x;",
            ">;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    return-object v0
.end method
