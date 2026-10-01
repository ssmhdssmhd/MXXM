.class public Lcom/baidu/cyberplayer/utils/I;
.super Lcom/baidu/cyberplayer/utils/F;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/F;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/cyberplayer/utils/I;->a:I

    .line 32
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/I;->a(Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "text/html; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/I;->c(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/baidu/cyberplayer/utils/J;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/I;->e(Ljava/lang/String;)V

    .line 35
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/I;->b(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/I;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/F;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/cyberplayer/utils/I;->a:I

    .line 40
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/I;->a(Lcom/baidu/cyberplayer/utils/F;)V

    .line 41
    return-void
.end method


# virtual methods
.method public b()I
    .locals 2

    .line 66
    iget v0, p0, Lcom/baidu/cyberplayer/utils/I;->a:I

    if-eqz v0, :cond_0

    .line 67
    iget v0, p0, Lcom/baidu/cyberplayer/utils/I;->a:I

    return v0

    .line 68
    :cond_0
    new-instance v0, Lcom/baidu/cyberplayer/utils/N;

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/I;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/utils/N;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/N;->a()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/baidu/cyberplayer/utils/I;->a:I

    .line 62
    return-void
.end method

.method public c()V
    .locals 2

    .line 114
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/I;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/I;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/I;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/cyberplayer/utils/I;->a:I

    invoke-static {v1}, Lcom/baidu/cyberplayer/utils/N;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/I;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/I;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/I;->b()I

    move-result v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/N;->a(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/I;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/I;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/I;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
