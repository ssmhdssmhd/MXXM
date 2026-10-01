.class public Lcom/baidu/cyberplayer/utils/C;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private a:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 86
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Jan"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "Feb"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "Mar"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    const-string v5, "Apr"

    aput-object v5, v0, v4

    const/4 v5, 0x4

    const-string v6, "May"

    aput-object v6, v0, v5

    const/4 v6, 0x5

    const-string v7, "Jun"

    aput-object v7, v0, v6

    const/4 v7, 0x6

    const-string v8, "Jul"

    aput-object v8, v0, v7

    const/4 v8, 0x7

    const-string v9, "Aug"

    aput-object v9, v0, v8

    const-string v9, "Sep"

    const/16 v10, 0x8

    aput-object v9, v0, v10

    const-string v9, "Oct"

    const/16 v10, 0x9

    aput-object v9, v0, v10

    const-string v9, "Nov"

    const/16 v10, 0xa

    aput-object v9, v0, v10

    const-string v9, "Dec"

    const/16 v10, 0xb

    aput-object v9, v0, v10

    sput-object v0, Lcom/baidu/cyberplayer/utils/C;->a:[Ljava/lang/String;

    .line 109
    new-array v0, v8, [Ljava/lang/String;

    const-string v8, "Sun"

    aput-object v8, v0, v1

    const-string v1, "Mon"

    aput-object v1, v0, v2

    const-string v1, "Tue"

    aput-object v1, v0, v3

    const-string v1, "Wed"

    aput-object v1, v0, v4

    const-string v1, "Thu"

    aput-object v1, v0, v5

    const-string v1, "Fri"

    aput-object v1, v0, v6

    const-string v1, "Sat"

    aput-object v1, v0, v7

    sput-object v0, Lcom/baidu/cyberplayer/utils/C;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/C;->a:Ljava/util/Calendar;

    .line 33
    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .locals 1

    .line 103
    add-int/lit8 p0, p0, 0x0

    .line 104
    if-ltz p0, :cond_0

    const/16 v0, 0xc

    if-ge p0, v0, :cond_0

    .line 105
    sget-object v0, Lcom/baidu/cyberplayer/utils/C;->a:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 106
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static final b(I)Ljava/lang/String;
    .locals 1

    .line 121
    add-int/lit8 p0, p0, -0x1

    .line 122
    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    .line 123
    sget-object v0, Lcom/baidu/cyberplayer/utils/C;->b:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 124
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static final c(I)Ljava/lang/String;
    .locals 2

    .line 129
    nop

    .line 130
    const/16 v0, 0xa

    const-string v1, ""

    if-ge p0, v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 133
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 139
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/C;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/baidu/cyberplayer/utils/C;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/baidu/cyberplayer/utils/C;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/C;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/baidu/cyberplayer/utils/C;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/C;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/C;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Calendar;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/C;->a:Ljava/util/Calendar;

    return-object v0
.end method
