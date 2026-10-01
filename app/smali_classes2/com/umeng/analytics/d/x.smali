.class public Lcom/umeng/analytics/d/x;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/x$c;,
        Lcom/umeng/analytics/d/x$d;,
        Lcom/umeng/analytics/d/x$a;,
        Lcom/umeng/analytics/d/x$b;,
        Lcom/umeng/analytics/d/x$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/x;",
        "Lcom/umeng/analytics/d/x$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/analytics/d/x$e;",
            "Lcom/umeng/a/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lcom/umeng/a/a/a/b/m;

.field private static final j:Lcom/umeng/a/a/a/b/c;

.field private static final k:Lcom/umeng/a/a/a/b/c;

.field private static final l:Lcom/umeng/a/a/a/b/c;

.field private static final m:Lcom/umeng/a/a/a/b/c;

.field private static final n:Lcom/umeng/a/a/a/b/c;

.field private static final o:Lcom/umeng/a/a/a/b/c;

.field private static final p:Lcom/umeng/a/a/a/b/c;

.field private static final q:Ljava/util/Map;
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

.field private static final r:I = 0x0

.field private static final s:I = 0x1

.field private static final t:I = 0x2


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/s;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/q;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/umeng/analytics/d/y;

.field private u:B

.field private v:[Lcom/umeng/analytics/d/x$e;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "Session"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/x;->i:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v1, "id"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/x;->j:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string/jumbo v4, "start_time"

    const/16 v5, 0xa

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/x;->k:Lcom/umeng/a/a/a/b/c;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v7, 0x3

    const-string v8, "end_time"

    invoke-direct {v0, v8, v5, v7}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/x;->l:Lcom/umeng/a/a/a/b/c;

    .line 37
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v7, 0x4

    const-string v9, "duration"

    invoke-direct {v0, v9, v5, v7}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/x;->m:Lcom/umeng/a/a/a/b/c;

    .line 38
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v7, 0x5

    const-string v10, "pages"

    const/16 v11, 0xf

    invoke-direct {v0, v10, v11, v7}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/x;->n:Lcom/umeng/a/a/a/b/c;

    .line 39
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v7, 0x6

    const-string v12, "locations"

    invoke-direct {v0, v12, v11, v7}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/x;->o:Lcom/umeng/a/a/a/b/c;

    .line 40
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v7, 0x7

    const-string/jumbo v13, "traffic"

    const/16 v14, 0xc

    invoke-direct {v0, v13, v14, v7}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/x;->p:Lcom/umeng/a/a/a/b/c;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/x;->q:Ljava/util/Map;

    .line 44
    sget-object v0, Lcom/umeng/analytics/d/x;->q:Ljava/util/Map;

    const-class v7, Lcom/umeng/a/a/a/c/c;

    new-instance v15, Lcom/umeng/analytics/d/x$b;

    const/4 v6, 0x0

    invoke-direct {v15, v6}, Lcom/umeng/analytics/d/x$b;-><init>(Lcom/umeng/analytics/d/x$1;)V

    invoke-interface {v0, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/umeng/analytics/d/x;->q:Ljava/util/Map;

    const-class v7, Lcom/umeng/a/a/a/c/d;

    new-instance v15, Lcom/umeng/analytics/d/x$d;

    invoke-direct {v15, v6}, Lcom/umeng/analytics/d/x$d;-><init>(Lcom/umeng/analytics/d/x$1;)V

    invoke-interface {v0, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v0, Ljava/util/EnumMap;

    const-class v6, Lcom/umeng/analytics/d/x$e;

    invoke-direct {v0, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 141
    sget-object v6, Lcom/umeng/analytics/d/x$e;->a:Lcom/umeng/analytics/d/x$e;

    new-instance v7, Lcom/umeng/a/a/a/a/b;

    new-instance v15, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v15, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v7, v1, v3, v15}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/umeng/analytics/d/x$e;->b:Lcom/umeng/analytics/d/x$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v6, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v6, v5}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v4, v3, v6}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/umeng/analytics/d/x$e;->c:Lcom/umeng/analytics/d/x$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v5}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v8, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lcom/umeng/analytics/d/x$e;->d:Lcom/umeng/analytics/d/x$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v4, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v4, v5}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v9, v3, v4}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lcom/umeng/analytics/d/x$e;->e:Lcom/umeng/analytics/d/x$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v3, Lcom/umeng/a/a/a/a/d;

    new-instance v4, Lcom/umeng/a/a/a/a/g;

    const-class v5, Lcom/umeng/analytics/d/s;

    invoke-direct {v4, v14, v5}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v3, v11, v4}, Lcom/umeng/a/a/a/a/d;-><init>(BLcom/umeng/a/a/a/a/c;)V

    const/4 v4, 0x2

    invoke-direct {v2, v10, v4, v3}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/umeng/analytics/d/x$e;->f:Lcom/umeng/analytics/d/x$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v3, Lcom/umeng/a/a/a/a/d;

    new-instance v5, Lcom/umeng/a/a/a/a/g;

    const-class v6, Lcom/umeng/analytics/d/q;

    invoke-direct {v5, v14, v6}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v3, v11, v5}, Lcom/umeng/a/a/a/a/d;-><init>(BLcom/umeng/a/a/a/a/c;)V

    invoke-direct {v2, v12, v4, v3}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/umeng/analytics/d/x$e;->g:Lcom/umeng/analytics/d/x$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v3, Lcom/umeng/a/a/a/a/g;

    const-class v5, Lcom/umeng/analytics/d/y;

    invoke-direct {v3, v14, v5}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v13, v4, v3}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/x;->h:Ljava/util/Map;

    .line 158
    const-class v0, Lcom/umeng/analytics/d/x;

    sget-object v1, Lcom/umeng/analytics/d/x;->h:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 159
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/x;->u:B

    .line 137
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/umeng/analytics/d/x$e;

    sget-object v2, Lcom/umeng/analytics/d/x$e;->e:Lcom/umeng/analytics/d/x$e;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/umeng/analytics/d/x$e;->f:Lcom/umeng/analytics/d/x$e;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Lcom/umeng/analytics/d/x$e;->g:Lcom/umeng/analytics/d/x$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/x;->v:[Lcom/umeng/analytics/d/x$e;

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/x;)V
    .locals 4

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/d/x;->u:B

    .line 137
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/umeng/analytics/d/x$e;

    sget-object v2, Lcom/umeng/analytics/d/x$e;->e:Lcom/umeng/analytics/d/x$e;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/umeng/analytics/d/x$e;->f:Lcom/umeng/analytics/d/x$e;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Lcom/umeng/analytics/d/x$e;->g:Lcom/umeng/analytics/d/x$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/d/x;->v:[Lcom/umeng/analytics/d/x$e;

    .line 184
    iget-byte v0, p1, Lcom/umeng/analytics/d/x;->u:B

    iput-byte v0, p0, Lcom/umeng/analytics/d/x;->u:B

    .line 185
    invoke-virtual {p1}, Lcom/umeng/analytics/d/x;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p1, Lcom/umeng/analytics/d/x;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/x;->a:Ljava/lang/String;

    .line 188
    :cond_0
    iget-wide v0, p1, Lcom/umeng/analytics/d/x;->b:J

    iput-wide v0, p0, Lcom/umeng/analytics/d/x;->b:J

    .line 189
    iget-wide v0, p1, Lcom/umeng/analytics/d/x;->c:J

    iput-wide v0, p0, Lcom/umeng/analytics/d/x;->c:J

    .line 190
    iget-wide v0, p1, Lcom/umeng/analytics/d/x;->d:J

    iput-wide v0, p0, Lcom/umeng/analytics/d/x;->d:J

    .line 191
    invoke-virtual {p1}, Lcom/umeng/analytics/d/x;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    iget-object v1, p1, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/d/s;

    .line 194
    new-instance v3, Lcom/umeng/analytics/d/s;

    invoke-direct {v3, v2}, Lcom/umeng/analytics/d/s;-><init>(Lcom/umeng/analytics/d/s;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    goto :goto_0

    .line 196
    :cond_1
    iput-object v0, p0, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    .line 198
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/analytics/d/x;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    iget-object v1, p1, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/d/q;

    .line 201
    new-instance v3, Lcom/umeng/analytics/d/q;

    invoke-direct {v3, v2}, Lcom/umeng/analytics/d/q;-><init>(Lcom/umeng/analytics/d/q;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    goto :goto_1

    .line 203
    :cond_3
    iput-object v0, p0, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    .line 205
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/analytics/d/x;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    new-instance v0, Lcom/umeng/analytics/d/y;

    iget-object p1, p1, Lcom/umeng/analytics/d/x;->g:Lcom/umeng/analytics/d/y;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/d/y;-><init>(Lcom/umeng/analytics/d/y;)V

    iput-object v0, p0, Lcom/umeng/analytics/d/x;->g:Lcom/umeng/analytics/d/y;

    .line 208
    :cond_5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/umeng/analytics/d/x;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/umeng/analytics/d/x;->a:Ljava/lang/String;

    .line 172
    iput-wide p2, p0, Lcom/umeng/analytics/d/x;->b:J

    .line 173
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/x;->b(Z)V

    .line 174
    iput-wide p4, p0, Lcom/umeng/analytics/d/x;->c:J

    .line 175
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/x;->c(Z)V

    .line 176
    iput-wide p6, p0, Lcom/umeng/analytics/d/x;->d:J

    .line 177
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/x;->d(Z)V

    .line 178
    return-void
.end method

.method static synthetic D()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/x;->i:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic E()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/x;->j:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic F()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/x;->k:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic G()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/x;->l:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic H()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/x;->m:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic I()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/x;->n:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic J()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/x;->o:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic K()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/x;->p:Lcom/umeng/a/a/a/b/c;

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

    .line 518
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/d/x;->u:B

    .line 519
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/x;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    nop

    .line 523
    return-void

    .line 520
    :catch_0
    move-exception p1

    .line 521
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

    .line 509
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/x;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    nop

    .line 513
    return-void

    .line 510
    :catch_0
    move-exception p1

    .line 511
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/x;->g:Lcom/umeng/analytics/d/y;

    .line 410
    return-void
.end method

.method public B()Z
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->g:Lcom/umeng/analytics/d/y;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->g:Lcom/umeng/analytics/d/y;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->g:Lcom/umeng/analytics/d/y;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/y;->j()V

    .line 505
    :cond_0
    return-void

    .line 496
    :cond_1
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/x;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)Lcom/umeng/analytics/d/x$e;
    .locals 0

    .line 424
    invoke-static {p1}, Lcom/umeng/analytics/d/x$e;->a(I)Lcom/umeng/analytics/d/x$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/umeng/analytics/d/x;
    .locals 1

    .line 211
    new-instance v0, Lcom/umeng/analytics/d/x;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/x;-><init>(Lcom/umeng/analytics/d/x;)V

    return-object v0
.end method

.method public a(J)Lcom/umeng/analytics/d/x;
    .locals 0

    .line 257
    iput-wide p1, p0, Lcom/umeng/analytics/d/x;->b:J

    .line 258
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/x;->b(Z)V

    .line 259
    return-object p0
.end method

.method public a(Lcom/umeng/analytics/d/y;)Lcom/umeng/analytics/d/x;
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/umeng/analytics/d/x;->g:Lcom/umeng/analytics/d/y;

    .line 405
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/d/x;
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/umeng/analytics/d/x;->a:Ljava/lang/String;

    .line 234
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/umeng/analytics/d/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/s;",
            ">;)",
            "Lcom/umeng/analytics/d/x;"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    .line 342
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 428
    sget-object v0, Lcom/umeng/analytics/d/x;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 429
    return-void
.end method

.method public a(Lcom/umeng/analytics/d/q;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    return-void
.end method

.method public a(Lcom/umeng/analytics/d/s;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 247
    if-nez p1, :cond_0

    .line 248
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/x;->a:Ljava/lang/String;

    .line 250
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/x;->a(I)Lcom/umeng/analytics/d/x$e;

    move-result-object p1

    return-object p1
.end method

.method public b(J)Lcom/umeng/analytics/d/x;
    .locals 0

    .line 280
    iput-wide p1, p0, Lcom/umeng/analytics/d/x;->c:J

    .line 281
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/x;->c(Z)V

    .line 282
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/umeng/analytics/d/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/q;",
            ">;)",
            "Lcom/umeng/analytics/d/x;"
        }
    .end annotation

    .line 380
    iput-object p1, p0, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    .line 381
    return-object p0
.end method

.method public b()V
    .locals 4

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/x;->a:Ljava/lang/String;

    .line 217
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/d/x;->b(Z)V

    .line 218
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/umeng/analytics/d/x;->b:J

    .line 219
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/d/x;->c(Z)V

    .line 220
    iput-wide v2, p0, Lcom/umeng/analytics/d/x;->c:J

    .line 221
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/d/x;->d(Z)V

    .line 222
    iput-wide v2, p0, Lcom/umeng/analytics/d/x;->d:J

    .line 223
    iput-object v0, p0, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    .line 224
    iput-object v0, p0, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    .line 225
    iput-object v0, p0, Lcom/umeng/analytics/d/x;->g:Lcom/umeng/analytics/d/y;

    .line 226
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 432
    sget-object v0, Lcom/umeng/analytics/d/x;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 433
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 272
    iget-byte v0, p0, Lcom/umeng/analytics/d/x;->u:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/x;->u:B

    .line 273
    return-void
.end method

.method public c(J)Lcom/umeng/analytics/d/x;
    .locals 0

    .line 303
    iput-wide p1, p0, Lcom/umeng/analytics/d/x;->d:J

    .line 304
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/x;->d(Z)V

    .line 305
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .line 295
    iget-byte v0, p0, Lcom/umeng/analytics/d/x;->u:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/x;->u:B

    .line 296
    return-void
.end method

.method public d()V
    .locals 1

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/x;->a:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 318
    iget-byte v0, p0, Lcom/umeng/analytics/d/x;->u:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/umeng/a/a/a/a;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/d/x;->u:B

    .line 319
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 355
    if-nez p1, :cond_0

    .line 356
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    .line 358
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->a:Ljava/lang/String;

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

    .line 253
    iget-wide v0, p0, Lcom/umeng/analytics/d/x;->b:J

    return-wide v0
.end method

.method public f(Z)V
    .locals 0

    .line 394
    if-nez p1, :cond_0

    .line 395
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    .line 397
    :cond_0
    return-void
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/x;->a()Lcom/umeng/analytics/d/x;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 0

    .line 418
    if-nez p1, :cond_0

    .line 419
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/x;->g:Lcom/umeng/analytics/d/y;

    .line 421
    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 263
    iget-byte v0, p0, Lcom/umeng/analytics/d/x;->u:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/x;->u:B

    .line 264
    return-void
.end method

.method public i()Z
    .locals 2

    .line 268
    iget-byte v0, p0, Lcom/umeng/analytics/d/x;->u:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()J
    .locals 2

    .line 276
    iget-wide v0, p0, Lcom/umeng/analytics/d/x;->c:J

    return-wide v0
.end method

.method public k()V
    .locals 2

    .line 286
    iget-byte v0, p0, Lcom/umeng/analytics/d/x;->u:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/x;->u:B

    .line 287
    return-void
.end method

.method public l()Z
    .locals 2

    .line 291
    iget-byte v0, p0, Lcom/umeng/analytics/d/x;->u:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public m()J
    .locals 2

    .line 299
    iget-wide v0, p0, Lcom/umeng/analytics/d/x;->d:J

    return-wide v0
.end method

.method public n()V
    .locals 2

    .line 309
    iget-byte v0, p0, Lcom/umeng/analytics/d/x;->u:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/d/x;->u:B

    .line 310
    return-void
.end method

.method public o()Z
    .locals 2

    .line 314
    iget-byte v0, p0, Lcom/umeng/analytics/d/x;->u:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public q()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/umeng/analytics/d/s;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/s;",
            ">;"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    return-object v0
.end method

.method public s()V
    .locals 1

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    .line 347
    return-void
.end method

.method public t()Z
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    nop

    .line 440
    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v1, p0, Lcom/umeng/analytics/d/x;->a:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 442
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/d/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :goto_0
    nop

    .line 447
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string/jumbo v3, "start_time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-wide v3, p0, Lcom/umeng/analytics/d/x;->b:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 450
    nop

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string v3, "end_time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-wide v3, p0, Lcom/umeng/analytics/d/x;->c:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 454
    nop

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v3, "duration:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget-wide v3, p0, Lcom/umeng/analytics/d/x;->d:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 458
    nop

    .line 459
    invoke-virtual {p0}, Lcom/umeng/analytics/d/x;->t()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v3, "pages:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-object v3, p0, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    if-nez v3, :cond_1

    .line 463
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 465
    :cond_1
    iget-object v3, p0, Lcom/umeng/analytics/d/x;->e:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 467
    :goto_1
    nop

    .line 469
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/d/x;->y()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 470
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v3, "locations:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    iget-object v3, p0, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    if-nez v3, :cond_3

    .line 473
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 475
    :cond_3
    iget-object v3, p0, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 477
    :goto_2
    nop

    .line 479
    :cond_4
    invoke-virtual {p0}, Lcom/umeng/analytics/d/x;->B()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const-string/jumbo v1, "traffic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    iget-object v1, p0, Lcom/umeng/analytics/d/x;->g:Lcom/umeng/analytics/d/y;

    if-nez v1, :cond_5

    .line 483
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 485
    :cond_5
    iget-object v1, p0, Lcom/umeng/analytics/d/x;->g:Lcom/umeng/analytics/d/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 487
    :goto_3
    nop

    .line 489
    :cond_6
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public v()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/umeng/analytics/d/q;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/q;",
            ">;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    return-object v0
.end method

.method public x()V
    .locals 1

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    .line 386
    return-void
.end method

.method public y()Z
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Lcom/umeng/analytics/d/y;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/umeng/analytics/d/x;->g:Lcom/umeng/analytics/d/y;

    return-object v0
.end method
