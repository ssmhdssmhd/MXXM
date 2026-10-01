.class public Lcom/umeng/analytics/d/p;
.super Ljava/lang/Object;
.source "InstantMsg.java"

# interfaces
.implements Lcom/umeng/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/p$c;,
        Lcom/umeng/analytics/d/p$d;,
        Lcom/umeng/analytics/d/p$a;,
        Lcom/umeng/analytics/d/p$b;,
        Lcom/umeng/analytics/d/p$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/a/a/a/d<",
        "Lcom/umeng/analytics/d/p;",
        "Lcom/umeng/analytics/d/p$e;",
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
            "Lcom/umeng/analytics/d/p$e;",
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


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/g;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/i;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/i;",
            ">;"
        }
    .end annotation
.end field

.field private l:[Lcom/umeng/analytics/d/p$e;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "InstantMsg"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/p;->f:Lcom/umeng/a/a/a/b/m;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v1, "id"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/p;->g:Lcom/umeng/a/a/a/b/c;

    .line 35
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const-string v4, "errors"

    const/16 v5, 0xf

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/p;->h:Lcom/umeng/a/a/a/b/c;

    .line 36
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v7, 0x3

    const-string v8, "events"

    invoke-direct {v0, v8, v5, v7}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/p;->i:Lcom/umeng/a/a/a/b/c;

    .line 37
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v7, 0x4

    const-string v9, "game_events"

    invoke-direct {v0, v9, v5, v7}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/p;->j:Lcom/umeng/a/a/a/b/c;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/p;->k:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/umeng/analytics/d/p;->k:Ljava/util/Map;

    const-class v7, Lcom/umeng/a/a/a/c/c;

    new-instance v10, Lcom/umeng/analytics/d/p$b;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/umeng/analytics/d/p$b;-><init>(Lcom/umeng/analytics/d/p$1;)V

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/umeng/analytics/d/p;->k:Ljava/util/Map;

    const-class v7, Lcom/umeng/a/a/a/c/d;

    new-instance v10, Lcom/umeng/analytics/d/p$d;

    invoke-direct {v10, v11}, Lcom/umeng/analytics/d/p$d;-><init>(Lcom/umeng/analytics/d/p$1;)V

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/EnumMap;

    const-class v7, Lcom/umeng/analytics/d/p$e;

    invoke-direct {v0, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 122
    sget-object v7, Lcom/umeng/analytics/d/p$e;->a:Lcom/umeng/analytics/d/p$e;

    new-instance v10, Lcom/umeng/a/a/a/a/b;

    new-instance v11, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v11, v2}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v10, v1, v3, v11}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lcom/umeng/analytics/d/p$e;->b:Lcom/umeng/analytics/d/p$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v3, Lcom/umeng/a/a/a/a/d;

    new-instance v7, Lcom/umeng/a/a/a/a/g;

    const-class v10, Lcom/umeng/analytics/d/g;

    const/16 v11, 0xc

    invoke-direct {v7, v11, v10}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v3, v5, v7}, Lcom/umeng/a/a/a/a/d;-><init>(BLcom/umeng/a/a/a/a/c;)V

    invoke-direct {v2, v4, v6, v3}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lcom/umeng/analytics/d/p$e;->c:Lcom/umeng/analytics/d/p$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v3, Lcom/umeng/a/a/a/a/d;

    new-instance v4, Lcom/umeng/a/a/a/a/g;

    const-class v7, Lcom/umeng/analytics/d/i;

    invoke-direct {v4, v11, v7}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v3, v5, v4}, Lcom/umeng/a/a/a/a/d;-><init>(BLcom/umeng/a/a/a/a/c;)V

    invoke-direct {v2, v8, v6, v3}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lcom/umeng/analytics/d/p$e;->d:Lcom/umeng/analytics/d/p$e;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v3, Lcom/umeng/a/a/a/a/d;

    new-instance v4, Lcom/umeng/a/a/a/a/g;

    const-class v7, Lcom/umeng/analytics/d/i;

    invoke-direct {v4, v11, v7}, Lcom/umeng/a/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v3, v5, v4}, Lcom/umeng/a/a/a/a/d;-><init>(BLcom/umeng/a/a/a/a/c;)V

    invoke-direct {v2, v9, v6, v3}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/p;->e:Ljava/util/Map;

    .line 134
    const-class v0, Lcom/umeng/analytics/d/p;

    sget-object v1, Lcom/umeng/analytics/d/p;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/umeng/analytics/d/p$e;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/analytics/d/p$e;->b:Lcom/umeng/analytics/d/p$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/umeng/analytics/d/p$e;->c:Lcom/umeng/analytics/d/p$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/umeng/analytics/d/p$e;->d:Lcom/umeng/analytics/d/p$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/d/p;->l:[Lcom/umeng/analytics/d/p$e;

    .line 138
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/p;)V
    .locals 4

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/umeng/analytics/d/p$e;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/analytics/d/p$e;->b:Lcom/umeng/analytics/d/p$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/umeng/analytics/d/p$e;->c:Lcom/umeng/analytics/d/p$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/umeng/analytics/d/p$e;->d:Lcom/umeng/analytics/d/p$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/d/p;->l:[Lcom/umeng/analytics/d/p$e;

    .line 151
    invoke-virtual {p1}, Lcom/umeng/analytics/d/p;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p1, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/d/p;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v1, p1, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/d/g;

    .line 157
    new-instance v3, Lcom/umeng/analytics/d/g;

    invoke-direct {v3, v2}, Lcom/umeng/analytics/d/g;-><init>(Lcom/umeng/analytics/d/g;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    goto :goto_0

    .line 159
    :cond_1
    iput-object v0, p0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    .line 161
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/analytics/d/p;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    iget-object v1, p1, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/d/i;

    .line 164
    new-instance v3, Lcom/umeng/analytics/d/i;

    invoke-direct {v3, v2}, Lcom/umeng/analytics/d/i;-><init>(Lcom/umeng/analytics/d/i;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    goto :goto_1

    .line 166
    :cond_3
    iput-object v0, p0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    .line 168
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/analytics/d/p;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object p1, p1, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/d/i;

    .line 171
    new-instance v2, Lcom/umeng/analytics/d/i;

    invoke-direct {v2, v1}, Lcom/umeng/analytics/d/i;-><init>(Lcom/umeng/analytics/d/i;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    goto :goto_2

    .line 173
    :cond_5
    iput-object v0, p0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    .line 175
    :cond_6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/umeng/analytics/d/p;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

    .line 145
    return-void
.end method

.method static synthetic A()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/p;->j:Lcom/umeng/a/a/a/b/c;

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

    .line 406
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/p;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    nop

    .line 410
    return-void

    .line 407
    :catch_0
    move-exception p1

    .line 408
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

    .line 398
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/p;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    nop

    .line 402
    return-void

    .line 399
    :catch_0
    move-exception p1

    .line 400
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic w()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/p;->f:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method static synthetic x()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/p;->g:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic y()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/p;->h:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method

.method static synthetic z()Lcom/umeng/a/a/a/b/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/umeng/analytics/d/p;->i:Lcom/umeng/a/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/umeng/analytics/d/p$e;
    .locals 0

    .line 331
    invoke-static {p1}, Lcom/umeng/analytics/d/p$e;->a(I)Lcom/umeng/analytics/d/p$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/umeng/analytics/d/p;
    .locals 1

    .line 178
    new-instance v0, Lcom/umeng/analytics/d/p;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/p;-><init>(Lcom/umeng/analytics/d/p;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/d/p;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/umeng/analytics/d/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/g;",
            ">;)",
            "Lcom/umeng/analytics/d/p;"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    .line 234
    return-object p0
.end method

.method public a(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 335
    sget-object v0, Lcom/umeng/analytics/d/p;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 336
    return-void
.end method

.method public a(Lcom/umeng/analytics/d/g;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method public a(Lcom/umeng/analytics/d/i;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 208
    if-nez p1, :cond_0

    .line 209
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

    .line 211
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/p;->a(I)Lcom/umeng/analytics/d/p$e;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)Lcom/umeng/analytics/d/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/i;",
            ">;)",
            "Lcom/umeng/analytics/d/p;"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    .line 273
    return-object p0
.end method

.method public b()V
    .locals 1

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

    .line 184
    iput-object v0, p0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    .line 185
    iput-object v0, p0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    .line 186
    iput-object v0, p0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    .line 187
    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 339
    sget-object v0, Lcom/umeng/analytics/d/p;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/a/c/b;

    invoke-interface {v0}, Lcom/umeng/a/a/a/c/b;->b()Lcom/umeng/a/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/a/a/a/c/a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V

    .line 340
    return-void
.end method

.method public b(Lcom/umeng/analytics/d/i;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 247
    if-nez p1, :cond_0

    .line 248
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    .line 250
    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;)Lcom/umeng/analytics/d/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/i;",
            ">;)",
            "Lcom/umeng/analytics/d/p;"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    .line 312
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .line 286
    if-nez p1, :cond_0

    .line 287
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    .line 289
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 325
    if-nez p1, :cond_0

    .line 326
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    .line 328
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

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

    .line 214
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/p;->a()Lcom/umeng/analytics/d/p;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/umeng/analytics/d/g;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/g;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    return-object v0
.end method

.method public j()V
    .locals 1

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    .line 239
    return-void
.end method

.method public k()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()I
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public m()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/umeng/analytics/d/i;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/i;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    return-object v0
.end method

.method public o()V
    .locals 1

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    .line 278
    return-void
.end method

.method public p()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()I
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public r()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/umeng/analytics/d/i;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/i;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    return-object v0
.end method

.method public t()V
    .locals 1

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    .line 317
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstantMsg("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    nop

    .line 347
    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v1, p0, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 349
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :goto_0
    nop

    .line 354
    invoke-virtual {p0}, Lcom/umeng/analytics/d/p;->k()Z

    move-result v1

    const-string v3, ", "

    if-eqz v1, :cond_2

    .line 355
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v1, "errors:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v1, p0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    if-nez v1, :cond_1

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    :goto_1
    nop

    .line 364
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/d/p;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 365
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v1, "events:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v1, p0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    if-nez v1, :cond_3

    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 370
    :cond_3
    iget-object v1, p0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    :goto_2
    nop

    .line 374
    :cond_4
    invoke-virtual {p0}, Lcom/umeng/analytics/d/p;->u()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 375
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string v1, "game_events:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-object v1, p0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    if-nez v1, :cond_5

    .line 378
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 380
    :cond_5
    iget-object v1, p0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    :goto_3
    nop

    .line 384
    :cond_6
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/umeng/analytics/d/p;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 394
    return-void

    .line 391
    :cond_0
    new-instance v0, Lcom/umeng/a/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method
