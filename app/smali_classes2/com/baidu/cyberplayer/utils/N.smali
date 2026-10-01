.class public Lcom/baidu/cyberplayer/utils/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/N;->a:Ljava/lang/String;

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/cyberplayer/utils/N;->a:I

    .line 93
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/N;->b:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/N;->a(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/N;->a(I)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/N;->b(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/N;->a:Ljava/lang/String;

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/cyberplayer/utils/N;->a:I

    .line 93
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/N;->b:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/N;->c(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .locals 0

    .line 51
    sparse-switch p0, :sswitch_data_0

    .line 61
    const-string p0, ""

    return-object p0

    .line 59
    :sswitch_0
    const-string p0, "Internal Server Error"

    return-object p0

    .line 58
    :sswitch_1
    const-string p0, "Invalid Range"

    return-object p0

    .line 57
    :sswitch_2
    const-string p0, "Precondition Failed"

    return-object p0

    .line 56
    :sswitch_3
    const-string p0, "Not Found"

    return-object p0

    .line 55
    :sswitch_4
    const-string p0, "Bad Request"

    return-object p0

    .line 54
    :sswitch_5
    const-string p0, "Partial Content"

    return-object p0

    .line 53
    :sswitch_6
    const-string p0, "OK"

    return-object p0

    .line 52
    :sswitch_7
    const-string p0, "Continue"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_7
        0xc8 -> :sswitch_6
        0xce -> :sswitch_5
        0x190 -> :sswitch_4
        0x194 -> :sswitch_3
        0x19c -> :sswitch_2
        0x1a0 -> :sswitch_1
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final a(I)Z
    .locals 1

    .line 131
    const/16 v0, 0xc8

    if-gt v0, p0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    .line 132
    const/4 p0, 0x1

    return p0

    .line 133
    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/baidu/cyberplayer/utils/N;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/baidu/cyberplayer/utils/N;->a:I

    .line 103
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/N;->a:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/N;->b:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 147
    const-string v0, " "

    if-nez p1, :cond_0

    .line 148
    const-string p1, "1.1"

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/N;->a(Ljava/lang/String;)V

    .line 149
    const/16 p1, 0x1f4

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/N;->a(I)V

    .line 150
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/N;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/N;->b(Ljava/lang/String;)V

    .line 151
    return-void

    .line 155
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_1

    .line 158
    return-void

    .line 159
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/N;->a(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_2

    .line 163
    return-void

    .line 164
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    nop

    .line 167
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    .line 170
    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/N;->a(I)V

    .line 172
    const-string p1, ""

    .line 173
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz v2, :cond_3

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 176
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 178
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/N;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 182
    goto :goto_2

    .line 180
    :catch_1
    move-exception p1

    .line 181
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 184
    :goto_2
    return-void
.end method
