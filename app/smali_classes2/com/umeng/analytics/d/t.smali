.class public Lcom/umeng/analytics/d/t;
.super Lcom/umeng/a/a/a/n;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/n<",
        "Lcom/umeng/analytics/d/t;",
        "Lcom/umeng/analytics/d/t$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/analytics/d/t$a;",
            "Lcom/umeng/a/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/umeng/a/a/a/b/m;

.field private static final e:Lcom/umeng/a/a/a/b/c;

.field private static final f:Lcom/umeng/a/a/a/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 32
    new-instance v0, Lcom/umeng/a/a/a/b/m;

    const-string v1, "PropertyValue"

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/t;->d:Lcom/umeng/a/a/a/b/m;

    .line 33
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v1, 0x1

    const-string/jumbo v2, "string_value"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3, v1}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/t;->e:Lcom/umeng/a/a/a/b/c;

    .line 34
    new-instance v0, Lcom/umeng/a/a/a/b/c;

    const/4 v1, 0x2

    const-string v4, "long_value"

    const/16 v5, 0xa

    invoke-direct {v0, v4, v5, v1}, Lcom/umeng/a/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/d/t;->f:Lcom/umeng/a/a/a/b/c;

    .line 99
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/umeng/analytics/d/t$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 100
    sget-object v1, Lcom/umeng/analytics/d/t$a;->a:Lcom/umeng/analytics/d/t$a;

    new-instance v6, Lcom/umeng/a/a/a/a/b;

    new-instance v7, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v7, v3}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    const/4 v3, 0x3

    invoke-direct {v6, v2, v3, v7}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lcom/umeng/analytics/d/t$a;->b:Lcom/umeng/analytics/d/t$a;

    new-instance v2, Lcom/umeng/a/a/a/a/b;

    new-instance v6, Lcom/umeng/a/a/a/a/c;

    invoke-direct {v6, v5}, Lcom/umeng/a/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v4, v3, v6}, Lcom/umeng/a/a/a/a/b;-><init>(Ljava/lang/String;BLcom/umeng/a/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/d/t;->a:Ljava/util/Map;

    .line 105
    const-class v0, Lcom/umeng/analytics/d/t;

    sget-object v1, Lcom/umeng/analytics/d/t;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/umeng/a/a/a/n;-><init>()V

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/t$a;Ljava/lang/Object;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/umeng/a/a/a/n;-><init>(Lcom/umeng/a/a/a/k;Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/d/t;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/umeng/a/a/a/n;-><init>(Lcom/umeng/a/a/a/n;)V

    .line 118
    return-void
.end method

.method public static a(J)Lcom/umeng/analytics/d/t;
    .locals 1

    .line 130
    new-instance v0, Lcom/umeng/analytics/d/t;

    invoke-direct {v0}, Lcom/umeng/analytics/d/t;-><init>()V

    .line 131
    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/d/t;->b(J)V

    .line 132
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/umeng/analytics/d/t;
    .locals 1

    .line 124
    new-instance v0, Lcom/umeng/analytics/d/t;

    invoke-direct {v0}, Lcom/umeng/analytics/d/t;-><init>()V

    .line 125
    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d/t;->b(Ljava/lang/String;)V

    .line 126
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

    .line 343
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/t;->a(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    nop

    .line 347
    return-void

    .line 344
    :catch_0
    move-exception p1

    .line 345
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

    .line 334
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/b/b;

    new-instance v1, Lcom/umeng/a/a/a/d/a;

    invoke-direct {v1, p1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/b/b;-><init>(Lcom/umeng/a/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/d/t;->b(Lcom/umeng/a/a/a/b/h;)V
    :try_end_0
    .catch Lcom/umeng/a/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    nop

    .line 338
    return-void

    .line 335
    :catch_0
    move-exception p1

    .line 336
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/a/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/umeng/a/a/a/k;)Lcom/umeng/a/a/a/b/c;
    .locals 0

    .line 31
    check-cast p1, Lcom/umeng/analytics/d/t$a;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/t;->a(Lcom/umeng/analytics/d/t$a;)Lcom/umeng/a/a/a/b/c;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/umeng/analytics/d/t$a;)Lcom/umeng/a/a/a/b/c;
    .locals 3

    .line 240
    sget-object v0, Lcom/umeng/analytics/d/t$1;->a:[I

    invoke-virtual {p1}, Lcom/umeng/analytics/d/t$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown field id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :pswitch_0
    sget-object p1, Lcom/umeng/analytics/d/t;->f:Lcom/umeng/a/a/a/b/c;

    return-object p1

    .line 242
    :pswitch_1
    sget-object p1, Lcom/umeng/analytics/d/t;->e:Lcom/umeng/a/a/a/b/c;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(I)Lcom/umeng/analytics/d/t$a;
    .locals 0

    .line 261
    invoke-static {p1}, Lcom/umeng/analytics/d/t$a;->a(I)Lcom/umeng/analytics/d/t$a;

    move-result-object p1

    return-object p1
.end method

.method protected a(S)Lcom/umeng/analytics/d/t$a;
    .locals 0

    .line 257
    invoke-static {p1}, Lcom/umeng/analytics/d/t$a;->b(I)Lcom/umeng/analytics/d/t$a;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/umeng/analytics/d/t;
    .locals 1

    .line 120
    new-instance v0, Lcom/umeng/analytics/d/t;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/t;-><init>(Lcom/umeng/analytics/d/t;)V

    return-object v0
.end method

.method protected a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/b/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 156
    iget-short v0, p2, Lcom/umeng/a/a/a/b/c;->c:S

    invoke-static {v0}, Lcom/umeng/analytics/d/t$a;->a(I)Lcom/umeng/analytics/d/t$a;

    move-result-object v0

    .line 157
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 158
    sget-object v2, Lcom/umeng/analytics/d/t$1;->a:[I

    invoke-virtual {v0}, Lcom/umeng/analytics/d/t$a;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 178
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :pswitch_0
    iget-byte v0, p2, Lcom/umeng/a/a/a/b/c;->b:B

    sget-object v2, Lcom/umeng/analytics/d/t;->f:Lcom/umeng/a/a/a/b/c;

    iget-byte v2, v2, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v0, v2, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->x()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 172
    return-object p1

    .line 174
    :cond_0
    iget-byte p2, p2, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, p2}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 175
    return-object v1

    .line 160
    :pswitch_1
    iget-byte v0, p2, Lcom/umeng/a/a/a/b/c;->b:B

    sget-object v2, Lcom/umeng/analytics/d/t;->e:Lcom/umeng/a/a/a/b/c;

    iget-byte v2, v2, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v0, v2, :cond_1

    .line 162
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object p1

    .line 163
    return-object p1

    .line 165
    :cond_1
    iget-byte p2, p2, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, p2}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 166
    return-object v1

    .line 181
    :cond_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lcom/umeng/a/a/a/b/h;S)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 203
    invoke-static {p2}, Lcom/umeng/analytics/d/t$a;->a(I)Lcom/umeng/analytics/d/t$a;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    sget-object p2, Lcom/umeng/analytics/d/t$1;->a:[I

    invoke-virtual {v0}, Lcom/umeng/analytics/d/t$a;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_0

    .line 215
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :pswitch_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->x()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 213
    return-object p1

    .line 208
    :pswitch_1
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object p1

    .line 209
    return-object p1

    .line 218
    :cond_0
    new-instance p1, Lcom/umeng/a/a/a/b/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find a field with field id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic a(Lcom/umeng/a/a/a/k;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 31
    check-cast p1, Lcom/umeng/analytics/d/t$a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d/t;->a(Lcom/umeng/analytics/d/t$a;Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Lcom/umeng/analytics/d/t$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 138
    sget-object v0, Lcom/umeng/analytics/d/t$1;->a:[I

    invoke-virtual {p1}, Lcom/umeng/analytics/d/t$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 150
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown field id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 145
    :pswitch_0
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 146
    goto :goto_0

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Was expecting value of type Long for field \'long_value\', but got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :pswitch_1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 141
    nop

    .line 152
    :goto_0
    return-void

    .line 143
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Was expecting value of type String for field \'string_value\', but got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/umeng/analytics/d/t;)Z
    .locals 2

    .line 311
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/umeng/analytics/d/t;->i()Lcom/umeng/a/a/a/k;

    move-result-object v0

    invoke-virtual {p1}, Lcom/umeng/analytics/d/t;->i()Lcom/umeng/a/a/a/k;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/umeng/analytics/d/t;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/umeng/analytics/d/t;->j()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Lcom/umeng/analytics/d/t;)I
    .locals 2

    .line 316
    invoke-virtual {p0}, Lcom/umeng/analytics/d/t;->i()Lcom/umeng/a/a/a/k;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p1}, Lcom/umeng/analytics/d/t;->i()Lcom/umeng/a/a/a/k;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lcom/umeng/a/a/a/e;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 317
    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/umeng/analytics/d/t;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/umeng/analytics/d/t;->j()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/a/a/a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 320
    :cond_0
    return v0
.end method

.method public synthetic b(I)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/t;->a(I)Lcom/umeng/analytics/d/t$a;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b(S)Lcom/umeng/a/a/a/k;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/t;->a(S)Lcom/umeng/analytics/d/t$a;

    move-result-object p1

    return-object p1
.end method

.method public b(J)V
    .locals 1

    .line 288
    sget-object v0, Lcom/umeng/analytics/d/t$a;->b:Lcom/umeng/analytics/d/t$a;

    iput-object v0, p0, Lcom/umeng/analytics/d/t;->c:Lcom/umeng/a/a/a/k;

    .line 289
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/d/t;->b:Ljava/lang/Object;

    .line 290
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 274
    if-eqz p1, :cond_0

    .line 275
    sget-object v0, Lcom/umeng/analytics/d/t$a;->a:Lcom/umeng/analytics/d/t$a;

    iput-object v0, p0, Lcom/umeng/analytics/d/t;->c:Lcom/umeng/a/a/a/k;

    .line 276
    iput-object p1, p0, Lcom/umeng/analytics/d/t;->b:Ljava/lang/Object;

    .line 277
    return-void

    .line 274
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method protected c()Lcom/umeng/a/a/a/b/m;
    .locals 1

    .line 252
    sget-object v0, Lcom/umeng/analytics/d/t;->d:Lcom/umeng/a/a/a/b/m;

    return-object v0
.end method

.method protected c(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/umeng/analytics/d/t$1;->a:[I

    iget-object v1, p0, Lcom/umeng/analytics/d/t;->c:Lcom/umeng/a/a/a/k;

    check-cast v1, Lcom/umeng/analytics/d/t$a;

    invoke-virtual {v1}, Lcom/umeng/analytics/d/t$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 197
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot write union with unknown field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/d/t;->c:Lcom/umeng/a/a/a/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/analytics/d/t;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 194
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/h;->a(J)V

    .line 195
    return-void

    .line 189
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/analytics/d/t;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 190
    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 191
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 266
    invoke-virtual {p0}, Lcom/umeng/analytics/d/t;->i()Lcom/umeng/a/a/a/k;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/d/t$a;->a:Lcom/umeng/analytics/d/t$a;

    if-ne v0, v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/umeng/analytics/d/t;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get field \'string_value\' because union is currently set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/t;->i()Lcom/umeng/a/a/a/k;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/d/t$a;

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/d/t;->a(Lcom/umeng/analytics/d/t$a;)Lcom/umeng/a/a/a/b/c;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/a/a/a/b/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d(Lcom/umeng/a/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/umeng/analytics/d/t$1;->a:[I

    iget-object v1, p0, Lcom/umeng/analytics/d/t;->c:Lcom/umeng/a/a/a/k;

    check-cast v1, Lcom/umeng/analytics/d/t$a;

    invoke-virtual {v1}, Lcom/umeng/analytics/d/t$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 234
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot write union with unknown field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/d/t;->c:Lcom/umeng/a/a/a/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/analytics/d/t;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 231
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/umeng/a/a/a/b/h;->a(J)V

    .line 232
    return-void

    .line 226
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/analytics/d/t;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 227
    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 228
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()J
    .locals 3

    .line 280
    invoke-virtual {p0}, Lcom/umeng/analytics/d/t;->i()Lcom/umeng/a/a/a/k;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/d/t$a;->b:Lcom/umeng/analytics/d/t$a;

    if-ne v0, v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/umeng/analytics/d/t;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get field \'long_value\' because union is currently set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/analytics/d/t;->i()Lcom/umeng/a/a/a/k;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/d/t$a;

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/d/t;->a(Lcom/umeng/analytics/d/t$a;)Lcom/umeng/a/a/a/b/c;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/a/a/a/b/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 303
    instance-of v0, p1, Lcom/umeng/analytics/d/t;

    if-eqz v0, :cond_0

    .line 304
    check-cast p1, Lcom/umeng/analytics/d/t;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d/t;->a(Lcom/umeng/analytics/d/t;)Z

    move-result p1

    return p1

    .line 306
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()Z
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/umeng/analytics/d/t;->c:Lcom/umeng/a/a/a/k;

    sget-object v1, Lcom/umeng/analytics/d/t$a;->a:Lcom/umeng/analytics/d/t$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic g()Lcom/umeng/a/a/a/d;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/umeng/analytics/d/t;->a()Lcom/umeng/analytics/d/t;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/umeng/analytics/d/t;->c:Lcom/umeng/a/a/a/k;

    sget-object v1, Lcom/umeng/analytics/d/t$a;->b:Lcom/umeng/analytics/d/t$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 329
    const/4 v0, 0x0

    return v0
.end method
