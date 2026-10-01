.class public final enum Lcom/umeng/analytics/d/e$e;
.super Ljava/lang/Enum;
.source "DeviceInfo.java"

# interfaces
.implements Lcom/umeng/a/a/a/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/d/e$e;",
        ">;",
        "Lcom/umeng/a/a/a/k;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/analytics/d/e$e;

.field public static final enum b:Lcom/umeng/analytics/d/e$e;

.field public static final enum c:Lcom/umeng/analytics/d/e$e;

.field public static final enum d:Lcom/umeng/analytics/d/e$e;

.field public static final enum e:Lcom/umeng/analytics/d/e$e;

.field public static final enum f:Lcom/umeng/analytics/d/e$e;

.field public static final enum g:Lcom/umeng/analytics/d/e$e;

.field public static final enum h:Lcom/umeng/analytics/d/e$e;

.field public static final enum i:Lcom/umeng/analytics/d/e$e;

.field public static final enum j:Lcom/umeng/analytics/d/e$e;

.field public static final enum k:Lcom/umeng/analytics/d/e$e;

.field public static final enum l:Lcom/umeng/analytics/d/e$e;

.field public static final enum m:Lcom/umeng/analytics/d/e$e;

.field public static final enum n:Lcom/umeng/analytics/d/e$e;

.field public static final enum o:Lcom/umeng/analytics/d/e$e;

.field public static final enum p:Lcom/umeng/analytics/d/e$e;

.field public static final enum q:Lcom/umeng/analytics/d/e$e;

.field private static final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/e$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic u:[Lcom/umeng/analytics/d/e$e;


# instance fields
.field private final s:S

.field private final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 78
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "device_id"

    const-string v2, "DEVICE_ID"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->a:Lcom/umeng/analytics/d/e$e;

    .line 79
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "idmd5"

    const-string v2, "IDMD5"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->b:Lcom/umeng/analytics/d/e$e;

    .line 80
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "mac_address"

    const-string v2, "MAC_ADDRESS"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v5, v6, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->c:Lcom/umeng/analytics/d/e$e;

    .line 81
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "open_udid"

    const-string v2, "OPEN_UDID"

    const/4 v7, 0x4

    invoke-direct {v0, v2, v6, v7, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->d:Lcom/umeng/analytics/d/e$e;

    .line 82
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "model"

    const-string v2, "MODEL"

    const/4 v8, 0x5

    invoke-direct {v0, v2, v7, v8, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->e:Lcom/umeng/analytics/d/e$e;

    .line 83
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "cpu"

    const-string v2, "CPU"

    const/4 v9, 0x6

    invoke-direct {v0, v2, v8, v9, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->f:Lcom/umeng/analytics/d/e$e;

    .line 84
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "os"

    const-string v2, "OS"

    const/4 v10, 0x7

    invoke-direct {v0, v2, v9, v10, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->g:Lcom/umeng/analytics/d/e$e;

    .line 85
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "os_version"

    const-string v2, "OS_VERSION"

    const/16 v11, 0x8

    invoke-direct {v0, v2, v10, v11, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->h:Lcom/umeng/analytics/d/e$e;

    .line 86
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "resolution"

    const-string v2, "RESOLUTION"

    const/16 v12, 0x9

    invoke-direct {v0, v2, v11, v12, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->i:Lcom/umeng/analytics/d/e$e;

    .line 87
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "is_jailbroken"

    const-string v2, "IS_JAILBROKEN"

    const/16 v13, 0xa

    invoke-direct {v0, v2, v12, v13, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->j:Lcom/umeng/analytics/d/e$e;

    .line 88
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "is_pirated"

    const-string v2, "IS_PIRATED"

    const/16 v14, 0xb

    invoke-direct {v0, v2, v13, v14, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->k:Lcom/umeng/analytics/d/e$e;

    .line 89
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "device_board"

    const-string v2, "DEVICE_BOARD"

    const/16 v15, 0xc

    invoke-direct {v0, v2, v14, v15, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->l:Lcom/umeng/analytics/d/e$e;

    .line 90
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "device_brand"

    const-string v2, "DEVICE_BRAND"

    const/16 v16, 0x0

    const/16 v3, 0xd

    invoke-direct {v0, v2, v15, v3, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->m:Lcom/umeng/analytics/d/e$e;

    .line 91
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "device_manutime"

    const-string v2, "DEVICE_MANUTIME"

    const/16 v17, 0x1

    const/16 v4, 0xe

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->n:Lcom/umeng/analytics/d/e$e;

    .line 92
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "device_manufacturer"

    const-string v2, "DEVICE_MANUFACTURER"

    const/16 v18, 0xd

    const/16 v3, 0xf

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->o:Lcom/umeng/analytics/d/e$e;

    .line 93
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "device_manuid"

    const-string v2, "DEVICE_MANUID"

    const/16 v19, 0xe

    const/16 v4, 0x10

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->p:Lcom/umeng/analytics/d/e$e;

    .line 94
    new-instance v0, Lcom/umeng/analytics/d/e$e;

    const-string v1, "device_name"

    const-string v2, "DEVICE_NAME"

    const/16 v20, 0xf

    const/16 v3, 0x11

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/umeng/analytics/d/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->q:Lcom/umeng/analytics/d/e$e;

    .line 77
    new-array v0, v3, [Lcom/umeng/analytics/d/e$e;

    sget-object v1, Lcom/umeng/analytics/d/e$e;->a:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v16

    sget-object v1, Lcom/umeng/analytics/d/e$e;->b:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v17

    sget-object v1, Lcom/umeng/analytics/d/e$e;->c:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/analytics/d/e$e;->d:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/umeng/analytics/d/e$e;->e:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/umeng/analytics/d/e$e;->f:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v8

    sget-object v1, Lcom/umeng/analytics/d/e$e;->g:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v9

    sget-object v1, Lcom/umeng/analytics/d/e$e;->h:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v10

    sget-object v1, Lcom/umeng/analytics/d/e$e;->i:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v11

    sget-object v1, Lcom/umeng/analytics/d/e$e;->j:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v12

    sget-object v1, Lcom/umeng/analytics/d/e$e;->k:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v13

    sget-object v1, Lcom/umeng/analytics/d/e$e;->l:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v14

    sget-object v1, Lcom/umeng/analytics/d/e$e;->m:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v15

    sget-object v1, Lcom/umeng/analytics/d/e$e;->n:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v18

    sget-object v1, Lcom/umeng/analytics/d/e$e;->o:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v19

    sget-object v1, Lcom/umeng/analytics/d/e$e;->p:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v20

    sget-object v1, Lcom/umeng/analytics/d/e$e;->q:Lcom/umeng/analytics/d/e$e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/analytics/d/e$e;->u:[Lcom/umeng/analytics/d/e$e;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/e$e;->r:Ljava/util/Map;

    .line 99
    const-class v0, Lcom/umeng/analytics/d/e$e;

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

    check-cast v1, Lcom/umeng/analytics/d/e$e;

    .line 100
    sget-object v2, Lcom/umeng/analytics/d/e$e;->r:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/umeng/analytics/d/e$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    goto :goto_0

    .line 102
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

    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    iput-short p3, p0, Lcom/umeng/analytics/d/e$e;->s:S

    .line 170
    iput-object p4, p0, Lcom/umeng/analytics/d/e$e;->t:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public static a(I)Lcom/umeng/analytics/d/e$e;
    .locals 0

    .line 108
    packed-switch p0, :pswitch_data_0

    .line 144
    const/4 p0, 0x0

    return-object p0

    .line 142
    :pswitch_0
    sget-object p0, Lcom/umeng/analytics/d/e$e;->q:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 140
    :pswitch_1
    sget-object p0, Lcom/umeng/analytics/d/e$e;->p:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 138
    :pswitch_2
    sget-object p0, Lcom/umeng/analytics/d/e$e;->o:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 136
    :pswitch_3
    sget-object p0, Lcom/umeng/analytics/d/e$e;->n:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 134
    :pswitch_4
    sget-object p0, Lcom/umeng/analytics/d/e$e;->m:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 132
    :pswitch_5
    sget-object p0, Lcom/umeng/analytics/d/e$e;->l:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 130
    :pswitch_6
    sget-object p0, Lcom/umeng/analytics/d/e$e;->k:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 128
    :pswitch_7
    sget-object p0, Lcom/umeng/analytics/d/e$e;->j:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 126
    :pswitch_8
    sget-object p0, Lcom/umeng/analytics/d/e$e;->i:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 124
    :pswitch_9
    sget-object p0, Lcom/umeng/analytics/d/e$e;->h:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 122
    :pswitch_a
    sget-object p0, Lcom/umeng/analytics/d/e$e;->g:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 120
    :pswitch_b
    sget-object p0, Lcom/umeng/analytics/d/e$e;->f:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 118
    :pswitch_c
    sget-object p0, Lcom/umeng/analytics/d/e$e;->e:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 116
    :pswitch_d
    sget-object p0, Lcom/umeng/analytics/d/e$e;->d:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 114
    :pswitch_e
    sget-object p0, Lcom/umeng/analytics/d/e$e;->c:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 112
    :pswitch_f
    sget-object p0, Lcom/umeng/analytics/d/e$e;->b:Lcom/umeng/analytics/d/e$e;

    return-object p0

    .line 110
    :pswitch_10
    sget-object p0, Lcom/umeng/analytics/d/e$e;->a:Lcom/umeng/analytics/d/e$e;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public static a(Ljava/lang/String;)Lcom/umeng/analytics/d/e$e;
    .locals 1

    .line 162
    sget-object v0, Lcom/umeng/analytics/d/e$e;->r:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/d/e$e;

    return-object p0
.end method

.method public static b(I)Lcom/umeng/analytics/d/e$e;
    .locals 3

    .line 153
    invoke-static {p0}, Lcom/umeng/analytics/d/e$e;->a(I)Lcom/umeng/analytics/d/e$e;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    return-object v0

    .line 154
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

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/d/e$e;
    .locals 1

    .line 77
    const-class v0, Lcom/umeng/analytics/d/e$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/d/e$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/d/e$e;
    .locals 1

    .line 77
    sget-object v0, Lcom/umeng/analytics/d/e$e;->u:[Lcom/umeng/analytics/d/e$e;

    invoke-virtual {v0}, [Lcom/umeng/analytics/d/e$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/d/e$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 174
    iget-short v0, p0, Lcom/umeng/analytics/d/e$e;->s:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/umeng/analytics/d/e$e;->t:Ljava/lang/String;

    return-object v0
.end method
