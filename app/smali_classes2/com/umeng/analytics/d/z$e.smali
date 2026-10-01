.class public final enum Lcom/umeng/analytics/d/z$e;
.super Ljava/lang/Enum;
.source "UALogEntry.java"

# interfaces
.implements Lcom/umeng/a/a/a/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/d/z$e;",
        ">;",
        "Lcom/umeng/a/a/a/k;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/analytics/d/z$e;

.field public static final enum b:Lcom/umeng/analytics/d/z$e;

.field public static final enum c:Lcom/umeng/analytics/d/z$e;

.field public static final enum d:Lcom/umeng/analytics/d/z$e;

.field public static final enum e:Lcom/umeng/analytics/d/z$e;

.field public static final enum f:Lcom/umeng/analytics/d/z$e;

.field public static final enum g:Lcom/umeng/analytics/d/z$e;

.field public static final enum h:Lcom/umeng/analytics/d/z$e;

.field public static final enum i:Lcom/umeng/analytics/d/z$e;

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/z$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic m:[Lcom/umeng/analytics/d/z$e;


# instance fields
.field private final k:S

.field private final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 62
    new-instance v0, Lcom/umeng/analytics/d/z$e;

    const-string v1, "client_stats"

    const-string v2, "CLIENT_STATS"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/umeng/analytics/d/z$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/z$e;->a:Lcom/umeng/analytics/d/z$e;

    .line 63
    new-instance v0, Lcom/umeng/analytics/d/z$e;

    const-string v1, "app_info"

    const-string v2, "APP_INFO"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/umeng/analytics/d/z$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/z$e;->b:Lcom/umeng/analytics/d/z$e;

    .line 64
    new-instance v0, Lcom/umeng/analytics/d/z$e;

    const-string v1, "device_info"

    const-string v2, "DEVICE_INFO"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v5, v6, v1}, Lcom/umeng/analytics/d/z$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/z$e;->c:Lcom/umeng/analytics/d/z$e;

    .line 65
    new-instance v0, Lcom/umeng/analytics/d/z$e;

    const-string v1, "misc_info"

    const-string v2, "MISC_INFO"

    const/4 v7, 0x4

    invoke-direct {v0, v2, v6, v7, v1}, Lcom/umeng/analytics/d/z$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/z$e;->d:Lcom/umeng/analytics/d/z$e;

    .line 66
    new-instance v0, Lcom/umeng/analytics/d/z$e;

    const-string v1, "activate_msg"

    const-string v2, "ACTIVATE_MSG"

    const/4 v8, 0x5

    invoke-direct {v0, v2, v7, v8, v1}, Lcom/umeng/analytics/d/z$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/z$e;->e:Lcom/umeng/analytics/d/z$e;

    .line 67
    new-instance v0, Lcom/umeng/analytics/d/z$e;

    const-string v1, "instant_msgs"

    const-string v2, "INSTANT_MSGS"

    const/4 v9, 0x6

    invoke-direct {v0, v2, v8, v9, v1}, Lcom/umeng/analytics/d/z$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/z$e;->f:Lcom/umeng/analytics/d/z$e;

    .line 68
    new-instance v0, Lcom/umeng/analytics/d/z$e;

    const-string v1, "sessions"

    const-string v2, "SESSIONS"

    const/4 v10, 0x7

    invoke-direct {v0, v2, v9, v10, v1}, Lcom/umeng/analytics/d/z$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/z$e;->g:Lcom/umeng/analytics/d/z$e;

    .line 69
    new-instance v0, Lcom/umeng/analytics/d/z$e;

    const-string v1, "imprint"

    const-string v2, "IMPRINT"

    const/16 v11, 0x8

    invoke-direct {v0, v2, v10, v11, v1}, Lcom/umeng/analytics/d/z$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/z$e;->h:Lcom/umeng/analytics/d/z$e;

    .line 70
    new-instance v0, Lcom/umeng/analytics/d/z$e;

    const-string v1, "id_tracking"

    const-string v2, "ID_TRACKING"

    const/16 v12, 0x9

    invoke-direct {v0, v2, v11, v12, v1}, Lcom/umeng/analytics/d/z$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/z$e;->i:Lcom/umeng/analytics/d/z$e;

    .line 61
    new-array v0, v12, [Lcom/umeng/analytics/d/z$e;

    sget-object v1, Lcom/umeng/analytics/d/z$e;->a:Lcom/umeng/analytics/d/z$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/analytics/d/z$e;->b:Lcom/umeng/analytics/d/z$e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/analytics/d/z$e;->c:Lcom/umeng/analytics/d/z$e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/analytics/d/z$e;->d:Lcom/umeng/analytics/d/z$e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/umeng/analytics/d/z$e;->e:Lcom/umeng/analytics/d/z$e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/umeng/analytics/d/z$e;->f:Lcom/umeng/analytics/d/z$e;

    aput-object v1, v0, v8

    sget-object v1, Lcom/umeng/analytics/d/z$e;->g:Lcom/umeng/analytics/d/z$e;

    aput-object v1, v0, v9

    sget-object v1, Lcom/umeng/analytics/d/z$e;->h:Lcom/umeng/analytics/d/z$e;

    aput-object v1, v0, v10

    sget-object v1, Lcom/umeng/analytics/d/z$e;->i:Lcom/umeng/analytics/d/z$e;

    aput-object v1, v0, v11

    sput-object v0, Lcom/umeng/analytics/d/z$e;->m:[Lcom/umeng/analytics/d/z$e;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/z$e;->j:Ljava/util/Map;

    .line 75
    const-class v0, Lcom/umeng/analytics/d/z$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/d/z$e;

    .line 76
    sget-object v2, Lcom/umeng/analytics/d/z$e;->j:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/umeng/analytics/d/z$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput-short p3, p0, Lcom/umeng/analytics/d/z$e;->k:S

    .line 130
    iput-object p4, p0, Lcom/umeng/analytics/d/z$e;->l:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public static a(I)Lcom/umeng/analytics/d/z$e;
    .locals 0

    .line 84
    packed-switch p0, :pswitch_data_0

    .line 104
    const/4 p0, 0x0

    return-object p0

    .line 102
    :pswitch_0
    sget-object p0, Lcom/umeng/analytics/d/z$e;->i:Lcom/umeng/analytics/d/z$e;

    return-object p0

    .line 100
    :pswitch_1
    sget-object p0, Lcom/umeng/analytics/d/z$e;->h:Lcom/umeng/analytics/d/z$e;

    return-object p0

    .line 98
    :pswitch_2
    sget-object p0, Lcom/umeng/analytics/d/z$e;->g:Lcom/umeng/analytics/d/z$e;

    return-object p0

    .line 96
    :pswitch_3
    sget-object p0, Lcom/umeng/analytics/d/z$e;->f:Lcom/umeng/analytics/d/z$e;

    return-object p0

    .line 94
    :pswitch_4
    sget-object p0, Lcom/umeng/analytics/d/z$e;->e:Lcom/umeng/analytics/d/z$e;

    return-object p0

    .line 92
    :pswitch_5
    sget-object p0, Lcom/umeng/analytics/d/z$e;->d:Lcom/umeng/analytics/d/z$e;

    return-object p0

    .line 90
    :pswitch_6
    sget-object p0, Lcom/umeng/analytics/d/z$e;->c:Lcom/umeng/analytics/d/z$e;

    return-object p0

    .line 88
    :pswitch_7
    sget-object p0, Lcom/umeng/analytics/d/z$e;->b:Lcom/umeng/analytics/d/z$e;

    return-object p0

    .line 86
    :pswitch_8
    sget-object p0, Lcom/umeng/analytics/d/z$e;->a:Lcom/umeng/analytics/d/z$e;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/umeng/analytics/d/z$e;
    .locals 1

    .line 122
    sget-object v0, Lcom/umeng/analytics/d/z$e;->j:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/d/z$e;

    return-object p0
.end method

.method public static b(I)Lcom/umeng/analytics/d/z$e;
    .locals 3

    .line 113
    invoke-static {p0}, Lcom/umeng/analytics/d/z$e;->a(I)Lcom/umeng/analytics/d/z$e;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    return-object v0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " doesn\'t exist!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/d/z$e;
    .locals 1

    .line 61
    const-class v0, Lcom/umeng/analytics/d/z$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/d/z$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/d/z$e;
    .locals 1

    .line 61
    sget-object v0, Lcom/umeng/analytics/d/z$e;->m:[Lcom/umeng/analytics/d/z$e;

    invoke-virtual {v0}, [Lcom/umeng/analytics/d/z$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/d/z$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 134
    iget-short v0, p0, Lcom/umeng/analytics/d/z$e;->k:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/umeng/analytics/d/z$e;->l:Ljava/lang/String;

    return-object v0
.end method
