.class public Lcom/baidu/cyberplayer/utils/be;
.super Lcom/baidu/cyberplayer/utils/cf;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/utils/ai;
.implements Lcom/baidu/cyberplayer/utils/an;


# instance fields
.field private a:I

.field private a:J

.field private a:Lcom/baidu/cyberplayer/utils/bC;

.field private a:Lcom/baidu/cyberplayer/utils/bg;

.field private a:Lcom/baidu/cyberplayer/utils/bh;

.field private a:Lcom/baidu/cyberplayer/utils/bs;

.field private a:Lcom/baidu/cyberplayer/utils/bv;

.field private a:Lcom/baidu/cyberplayer/utils/bz;

.field private a:Lcom/baidu/cyberplayer/utils/cd;

.field private b:I

.field private b:J


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/utils/bh;)V
    .locals 2

    .line 524
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/cf;-><init>()V

    .line 558
    new-instance v0, Lcom/baidu/cyberplayer/utils/cd;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/cd;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/cd;

    .line 639
    new-instance v0, Lcom/baidu/cyberplayer/utils/bs;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bs;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bs;

    .line 679
    new-instance v0, Lcom/baidu/cyberplayer/utils/bz;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bz;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bz;

    .line 727
    new-instance v0, Lcom/baidu/cyberplayer/utils/bv;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bv;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bv;

    .line 779
    new-instance v0, Lcom/baidu/cyberplayer/utils/bg;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bg;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bg;

    .line 525
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/bh;)V

    .line 527
    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/cyberplayer/utils/be;->a:I

    .line 528
    iput p1, p0, Lcom/baidu/cyberplayer/utils/be;->b:I

    .line 530
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/be;->a(J)V

    .line 531
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/be;->b(J)V

    .line 533
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/be;->e()V

    .line 534
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/be;->f()V

    .line 535
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/be;->g()V

    .line 536
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/bB;Lcom/baidu/cyberplayer/utils/bx;Lcom/baidu/cyberplayer/utils/bv;Lcom/baidu/cyberplayer/utils/bm;)I
    .locals 4

    .line 1092
    invoke-virtual {p2, p1, p3}, Lcom/baidu/cyberplayer/utils/bx;->a(Lcom/baidu/cyberplayer/utils/bl;Lcom/baidu/cyberplayer/utils/bv;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1093
    invoke-virtual {p4, p1}, Lcom/baidu/cyberplayer/utils/bm;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bB;->b()I

    move-result v0

    .line 1096
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1097
    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/bB;->a(I)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v2

    .line 1098
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/bl;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1099
    check-cast v2, Lcom/baidu/cyberplayer/utils/bB;

    invoke-direct {p0, v2, p2, p3, p4}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/bB;Lcom/baidu/cyberplayer/utils/bx;Lcom/baidu/cyberplayer/utils/bv;Lcom/baidu/cyberplayer/utils/bm;)I

    .line 1096
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1101
    :cond_2
    invoke-virtual {p4}, Lcom/baidu/cyberplayer/utils/bm;->size()I

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bA;
    .locals 3

    .line 955
    new-instance v0, Lcom/baidu/cyberplayer/utils/bA;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bA;-><init>()V

    .line 956
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ", "

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 958
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 959
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bA;->add(Ljava/lang/Object;)Z

    .line 960
    goto :goto_0

    .line 961
    :cond_0
    return-object v0
.end method

.method private a()Lcom/baidu/cyberplayer/utils/bg;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bg;

    return-object v0
.end method

.method private a(Lcom/baidu/cyberplayer/utils/bm;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bm;
    .locals 10

    .line 966
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_5

    .line 969
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bm;->size()I

    move-result v0

    .line 970
    new-array v1, v0, [Lcom/baidu/cyberplayer/utils/bl;

    .line 971
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 972
    invoke-virtual {p1, v3}, Lcom/baidu/cyberplayer/utils/bm;->a(I)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v4

    aput-object v4, v1, v3

    .line 971
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 974
    :cond_1
    invoke-direct {p0, p2}, Lcom/baidu/cyberplayer/utils/be;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bA;

    move-result-object p1

    .line 975
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bA;->size()I

    move-result p2

    .line 976
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_6

    .line 977
    invoke-virtual {p1, v3}, Lcom/baidu/cyberplayer/utils/bA;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 978
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/String;)V

    .line 979
    nop

    .line 980
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 981
    const/16 v6, 0x2d

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    .line 982
    const/4 v8, 0x0

    goto :goto_2

    .line 981
    :cond_2
    const/4 v8, 0x1

    .line 983
    :goto_2
    const/16 v9, 0x2b

    if-eq v5, v9, :cond_3

    if-ne v5, v6, :cond_4

    .line 984
    :cond_3
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 985
    :cond_4
    invoke-virtual {p0, v4}, Lcom/baidu/cyberplayer/utils/be;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/by;

    move-result-object v4

    .line 986
    if-nez v4, :cond_5

    .line 987
    goto :goto_3

    .line 988
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  ascSeq = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/String;)V

    .line 989
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  sortCap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/baidu/cyberplayer/utils/by;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/String;)V

    .line 990
    invoke-direct {p0, v1, v4, v8}, Lcom/baidu/cyberplayer/utils/be;->a([Lcom/baidu/cyberplayer/utils/bl;Lcom/baidu/cyberplayer/utils/by;Z)V

    .line 976
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 993
    :cond_6
    new-instance p1, Lcom/baidu/cyberplayer/utils/bm;

    invoke-direct {p1}, Lcom/baidu/cyberplayer/utils/bm;-><init>()V

    .line 994
    nop

    :goto_4
    if-ge v2, v0, :cond_7

    .line 995
    aget-object p2, v1, v2

    invoke-virtual {p1, p2}, Lcom/baidu/cyberplayer/utils/bm;->add(Ljava/lang/Object;)Z

    .line 994
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 996
    :cond_7
    return-object p1

    .line 967
    :cond_8
    :goto_5
    return-object p1
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bx;
    .locals 6

    .line 1059
    new-instance v0, Lcom/baidu/cyberplayer/utils/bx;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bx;-><init>()V

    .line 1061
    if-nez p1, :cond_0

    .line 1062
    return-object v0

    .line 1063
    :cond_0
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1064
    return-object v0

    .line 1066
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " \t\n\u000c\r"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    .line 1068
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 1069
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1070
    goto :goto_2

    .line 1071
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1072
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1073
    goto :goto_2

    .line 1074
    :cond_3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1075
    const-string v5, "\""

    invoke-static {v4, v5}, Lcom/baidu/cyberplayer/utils/ce;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1076
    nop

    .line 1077
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-ne v5, v2, :cond_4

    .line 1078
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1077
    :cond_4
    const-string v2, ""

    .line 1079
    :goto_1
    new-instance v5, Lcom/baidu/cyberplayer/utils/bw;

    invoke-direct {v5}, Lcom/baidu/cyberplayer/utils/bw;-><init>()V

    .line 1080
    invoke-virtual {v5, p1}, Lcom/baidu/cyberplayer/utils/bw;->a(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v5, v3}, Lcom/baidu/cyberplayer/utils/bw;->b(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v5, v4}, Lcom/baidu/cyberplayer/utils/bw;->c(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v5, v2}, Lcom/baidu/cyberplayer/utils/bw;->d(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v0, v5}, Lcom/baidu/cyberplayer/utils/bx;->add(Ljava/lang/Object;)Z

    .line 1085
    goto :goto_0

    .line 1087
    :cond_5
    :goto_2
    return-object v0
.end method

.method private a(Lcom/baidu/cyberplayer/utils/bh;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bh;

    .line 547
    return-void
.end method

.method private a([Lcom/baidu/cyberplayer/utils/bl;Lcom/baidu/cyberplayer/utils/by;Z)V
    .locals 7

    .line 937
    array-length v0, p1

    .line 938
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_3

    .line 939
    nop

    .line 940
    add-int/lit8 v2, v1, 0x1

    move v4, v1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    .line 941
    aget-object v5, p1, v4

    aget-object v6, p1, v3

    invoke-interface {p2, v5, v6}, Lcom/baidu/cyberplayer/utils/by;->a(Lcom/baidu/cyberplayer/utils/bl;Lcom/baidu/cyberplayer/utils/bl;)I

    move-result v5

    .line 942
    const/4 v6, 0x1

    if-ne p3, v6, :cond_0

    if-lez v5, :cond_0

    .line 943
    move v4, v3

    .line 944
    :cond_0
    if-nez p3, :cond_1

    if-gez v5, :cond_1

    .line 945
    move v4, v3

    .line 940
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 947
    :cond_2
    aget-object v3, p1, v1

    .line 948
    aget-object v5, p1, v4

    aput-object v5, p1, v1

    .line 949
    aput-object v3, p1, v4

    .line 938
    move v1, v2

    goto :goto_0

    .line 951
    :cond_3
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/bi;)Z
    .locals 2

    .line 897
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bi;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 898
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/be;->b(Lcom/baidu/cyberplayer/utils/bi;)Z

    move-result p1

    return p1

    .line 899
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bi;->c()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 900
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/be;->c(Lcom/baidu/cyberplayer/utils/bi;)Z

    move-result p1

    return p1

    .line 901
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/baidu/cyberplayer/utils/bj;)Z
    .locals 9

    .line 1106
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bj;->b()Ljava/lang/String;

    move-result-object v0

    .line 1107
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/be;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v0

    .line 1108
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bl;->b()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 1111
    :cond_0
    check-cast v0, Lcom/baidu/cyberplayer/utils/bB;

    .line 1112
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bj;->c()Ljava/lang/String;

    move-result-object v2

    .line 1113
    invoke-direct {p0, v2}, Lcom/baidu/cyberplayer/utils/be;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bx;

    move-result-object v2

    .line 1114
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->a()Lcom/baidu/cyberplayer/utils/bv;

    move-result-object v3

    .line 1117
    new-instance v4, Lcom/baidu/cyberplayer/utils/bm;

    invoke-direct {v4}, Lcom/baidu/cyberplayer/utils/bm;-><init>()V

    .line 1118
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bB;->b()I

    move-result v5

    .line 1119
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    .line 1120
    invoke-virtual {v0, v6}, Lcom/baidu/cyberplayer/utils/bB;->a(I)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v7

    .line 1121
    invoke-virtual {v7}, Lcom/baidu/cyberplayer/utils/bl;->b()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1122
    check-cast v7, Lcom/baidu/cyberplayer/utils/bB;

    invoke-direct {p0, v7, v2, v3, v4}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/bB;Lcom/baidu/cyberplayer/utils/bx;Lcom/baidu/cyberplayer/utils/bv;Lcom/baidu/cyberplayer/utils/bm;)I

    .line 1119
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1124
    :cond_2
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/bm;->size()I

    move-result v0

    .line 1127
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bj;->d()Ljava/lang/String;

    move-result-object v2

    .line 1128
    invoke-direct {p0, v4, v2}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/bm;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bm;

    move-result-object v2

    .line 1130
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bj;->a()I

    move-result v3

    .line 1131
    if-gtz v3, :cond_3

    .line 1132
    const/4 v3, 0x0

    .line 1133
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bj;->b()I

    move-result v4

    .line 1134
    if-nez v4, :cond_4

    .line 1135
    move v4, v0

    .line 1137
    :cond_4
    new-instance v5, Lcom/baidu/cyberplayer/utils/bp;

    invoke-direct {v5}, Lcom/baidu/cyberplayer/utils/bp;-><init>()V

    .line 1138
    nop

    .line 1139
    nop

    :goto_1
    if-ge v3, v0, :cond_5

    if-ge v1, v4, :cond_5

    .line 1140
    invoke-virtual {v2, v3}, Lcom/baidu/cyberplayer/utils/bm;->a(I)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v6

    .line 1141
    invoke-virtual {v5, v6}, Lcom/baidu/cyberplayer/utils/bp;->b(Lcom/baidu/cyberplayer/utils/bl;)V

    .line 1142
    add-int/lit8 v1, v1, 0x1

    .line 1139
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1145
    :cond_5
    invoke-virtual {v5}, Lcom/baidu/cyberplayer/utils/bp;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1146
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/bj;->a(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/bj;->b(I)V

    .line 1148
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/bj;->c(I)V

    .line 1149
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/bj;->d(I)V

    .line 1151
    const/4 p1, 0x1

    return p1

    .line 1109
    :cond_6
    :goto_2
    return v1
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .line 711
    nop

    .line 712
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->e()I

    move-result v0

    .line 713
    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 714
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/be;->a(I)Lcom/baidu/cyberplayer/utils/by;

    move-result-object v3

    .line 715
    invoke-interface {v3}, Lcom/baidu/cyberplayer/utils/by;->a()Ljava/lang/String;

    move-result-object v3

    .line 716
    if-lez v2, :cond_0

    .line 717
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 718
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 713
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 720
    :cond_1
    return-object v1
.end method

.method private b(Lcom/baidu/cyberplayer/utils/bi;)Z
    .locals 3

    .line 910
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bi;->c()Ljava/lang/String;

    move-result-object v0

    .line 911
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/be;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v0

    .line 912
    if-nez v0, :cond_0

    .line 913
    const/4 p1, 0x0

    return p1

    .line 915
    :cond_0
    new-instance v1, Lcom/baidu/cyberplayer/utils/bp;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/bp;-><init>()V

    .line 916
    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/bp;->a(Lcom/baidu/cyberplayer/utils/bl;)V

    .line 917
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bp;->toString()Ljava/lang/String;

    move-result-object v0

    .line 919
    const-string v1, "Result"

    invoke-virtual {p1, v1, v0}, Lcom/baidu/cyberplayer/utils/bi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-string v0, "NumberReturned"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/bi;->a(Ljava/lang/String;I)V

    .line 921
    const-string v0, "TotalMatches"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/bi;->a(Ljava/lang/String;I)V

    .line 922
    const-string v0, "UpdateID"

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->a()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/baidu/cyberplayer/utils/bi;->a(Ljava/lang/String;I)V

    .line 924
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ca;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bi;->a()V

    .line 927
    :cond_1
    return v1
.end method

.method private c()Ljava/lang/String;
    .locals 5

    .line 763
    nop

    .line 764
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->f()I

    move-result v0

    .line 765
    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 766
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/be;->a(I)Lcom/baidu/cyberplayer/utils/bu;

    move-result-object v3

    .line 767
    invoke-interface {v3}, Lcom/baidu/cyberplayer/utils/bu;->a()Ljava/lang/String;

    move-result-object v3

    .line 768
    if-lez v2, :cond_0

    .line 769
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 770
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 765
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 772
    :cond_1
    return-object v1
.end method

.method private c(Lcom/baidu/cyberplayer/utils/bi;)Z
    .locals 9

    .line 1005
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bi;->c()Ljava/lang/String;

    move-result-object v0

    .line 1006
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/be;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v1

    .line 1007
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bl;->b()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 1010
    :cond_0
    check-cast v1, Lcom/baidu/cyberplayer/utils/bB;

    .line 1011
    new-instance v3, Lcom/baidu/cyberplayer/utils/bm;

    invoke-direct {v3}, Lcom/baidu/cyberplayer/utils/bm;-><init>()V

    .line 1012
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bB;->b()I

    move-result v4

    .line 1013
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    .line 1014
    invoke-virtual {v1, v5}, Lcom/baidu/cyberplayer/utils/bB;->a(I)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v6

    .line 1015
    invoke-virtual {v6}, Lcom/baidu/cyberplayer/utils/bl;->c()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/baidu/cyberplayer/utils/Q;->a()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1016
    invoke-virtual {v6}, Lcom/baidu/cyberplayer/utils/bl;->b()Ljava/lang/String;

    move-result-object v7

    .line 1017
    const-string v8, "LocalHost"

    invoke-virtual {p1, v8}, Lcom/baidu/cyberplayer/utils/bi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1018
    invoke-virtual {p0, v7, v8}, Lcom/baidu/cyberplayer/utils/be;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1019
    const-string v8, "res"

    invoke-virtual {v6, v8, v7}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :cond_1
    invoke-virtual {v3, v6}, Lcom/baidu/cyberplayer/utils/bm;->add(Ljava/lang/Object;)Z

    .line 1013
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1025
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bi;->d()Ljava/lang/String;

    move-result-object v1

    .line 1026
    invoke-direct {p0, v3, v1}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/bm;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bm;

    move-result-object v1

    .line 1028
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bi;->a()I

    move-result v3

    .line 1029
    if-gtz v3, :cond_3

    .line 1030
    const/4 v3, 0x0

    .line 1031
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bi;->b()I

    move-result v5

    .line 1032
    if-nez v5, :cond_4

    .line 1033
    move v5, v4

    .line 1035
    :cond_4
    new-instance v6, Lcom/baidu/cyberplayer/utils/bp;

    invoke-direct {v6}, Lcom/baidu/cyberplayer/utils/bp;-><init>()V

    .line 1036
    nop

    .line 1037
    nop

    :goto_1
    if-ge v3, v4, :cond_5

    if-ge v2, v5, :cond_5

    .line 1038
    invoke-virtual {v1, v3}, Lcom/baidu/cyberplayer/utils/bm;->a(I)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v7

    .line 1039
    invoke-virtual {v6, v7}, Lcom/baidu/cyberplayer/utils/bp;->b(Lcom/baidu/cyberplayer/utils/bl;)V

    .line 1040
    invoke-virtual {v7, v0}, Lcom/baidu/cyberplayer/utils/bl;->c(Ljava/lang/String;)V

    .line 1041
    add-int/lit8 v2, v2, 0x1

    .line 1037
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1044
    :cond_5
    invoke-virtual {v6}, Lcom/baidu/cyberplayer/utils/bp;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/bi;->a(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/bi;->b(I)V

    .line 1047
    invoke-virtual {p1, v4}, Lcom/baidu/cyberplayer/utils/bi;->c(I)V

    .line 1048
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/bi;->d(I)V

    .line 1050
    const/4 p1, 0x1

    return p1

    .line 1008
    :cond_6
    :goto_2
    return v2
.end method

.method private e()V
    .locals 1

    .line 616
    new-instance v0, Lcom/baidu/cyberplayer/utils/bC;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bC;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bC;

    .line 617
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bC;

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/utils/bC;->a(Lcom/baidu/cyberplayer/utils/be;)V

    .line 618
    return-void
.end method

.method private f()V
    .locals 1

    .line 704
    new-instance v0, Lcom/baidu/cyberplayer/utils/bT;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bT;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/by;)Z

    .line 705
    new-instance v0, Lcom/baidu/cyberplayer/utils/bS;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bS;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/by;)Z

    .line 706
    new-instance v0, Lcom/baidu/cyberplayer/utils/bR;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bR;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/by;)Z

    .line 707
    return-void
.end method

.method private g()V
    .locals 1

    .line 757
    new-instance v0, Lcom/baidu/cyberplayer/utils/bP;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bP;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/bu;)Z

    .line 758
    new-instance v0, Lcom/baidu/cyberplayer/utils/bQ;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bQ;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/bu;)Z

    .line 759
    return-void
.end method

.method private declared-synchronized h()I
    .locals 1

    monitor-enter p0

    .line 594
    :try_start_0
    iget v0, p0, Lcom/baidu/cyberplayer/utils/be;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/cyberplayer/utils/be;->b:I

    .line 595
    iget v0, p0, Lcom/baidu/cyberplayer/utils/be;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 593
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 1

    monitor-enter p0

    .line 583
    :try_start_0
    iget v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 583
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a()J
    .locals 2

    .line 1288
    iget-wide v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:J

    return-wide v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/bC;
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bC;

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/bh;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bh;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bl;
    .locals 1

    .line 843
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->a()Lcom/baidu/cyberplayer/utils/bC;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bC;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Lcom/baidu/cyberplayer/utils/br;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bs;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bs;->a(I)Lcom/baidu/cyberplayer/utils/br;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/br;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bs;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bs;->a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/br;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Lcom/baidu/cyberplayer/utils/bu;
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bv;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bv;->a(I)Lcom/baidu/cyberplayer/utils/bu;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/baidu/cyberplayer/utils/bv;
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bv;

    return-object v0
.end method

.method public a(I)Lcom/baidu/cyberplayer/utils/by;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bz;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bz;->a(I)Lcom/baidu/cyberplayer/utils/by;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/by;
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bz;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bz;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/by;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1249
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->a()Lcom/baidu/cyberplayer/utils/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bh;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 801
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bC;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bC;->a(Ljava/io/File;)Z

    .line 803
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bC;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bC;->a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/bN;

    move-result-object p1

    .line 804
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bN;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 801
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ExportContent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->g()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "/ExportContent"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 578
    :try_start_0
    iget v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    monitor-exit p0

    return-void

    .line 577
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(J)V
    .locals 0

    .line 1283
    iput-wide p1, p0, Lcom/baidu/cyberplayer/utils/be;->a:J

    .line 1284
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/G;)V
    .locals 8

    .line 1169
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->j()Ljava/lang/String;

    move-result-object v0

    .line 1170
    const-string v1, "/ExportContent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1171
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->t()Z

    .line 1172
    return-void

    .line 1175
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->a()Lcom/baidu/cyberplayer/utils/P;

    move-result-object v0

    .line 1176
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/P;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1177
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/P;->b(I)Lcom/baidu/cyberplayer/utils/O;

    move-result-object v2

    .line 1178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/O;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/O;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/String;)V

    .line 1176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1185
    :cond_1
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1191
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/be;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v0

    .line 1192
    if-nez v0, :cond_2

    .line 1193
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->t()Z

    .line 1194
    return-void

    .line 1196
    :cond_2
    instance-of v1, v0, Lcom/baidu/cyberplayer/utils/bK;

    if-nez v1, :cond_3

    .line 1197
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->t()Z

    .line 1198
    return-void

    .line 1206
    :cond_3
    check-cast v0, Lcom/baidu/cyberplayer/utils/bK;

    .line 1208
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bK;->c()J

    move-result-wide v1

    .line 1209
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bK;->h()Ljava/lang/String;

    move-result-object v3

    .line 1210
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bK;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 1212
    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    if-nez v0, :cond_4

    goto :goto_3

    .line 1217
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->a()Lcom/baidu/cyberplayer/utils/bh;

    move-result-object v4

    .line 1218
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/bh;->a()Lcom/baidu/cyberplayer/utils/bd;

    move-result-object v4

    .line 1219
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/bd;->a()I

    move-result v5

    .line 1220
    new-instance v6, Lcom/baidu/cyberplayer/utils/bb;

    invoke-direct {v6, v5}, Lcom/baidu/cyberplayer/utils/bb;-><init>(I)V

    .line 1221
    invoke-virtual {v6, v3}, Lcom/baidu/cyberplayer/utils/bb;->a(Ljava/lang/String;)V

    .line 1222
    const-string v7, "Output"

    invoke-virtual {v6, v7}, Lcom/baidu/cyberplayer/utils/bb;->c(Ljava/lang/String;)V

    .line 1223
    const-string v7, "OK"

    invoke-virtual {v6, v7}, Lcom/baidu/cyberplayer/utils/bb;->d(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {v4, v6}, Lcom/baidu/cyberplayer/utils/bd;->a(Lcom/baidu/cyberplayer/utils/bb;)V

    .line 1227
    new-instance v6, Lcom/baidu/cyberplayer/utils/I;

    invoke-direct {v6}, Lcom/baidu/cyberplayer/utils/I;-><init>()V

    .line 1228
    invoke-virtual {v6, v3}, Lcom/baidu/cyberplayer/utils/I;->c(Ljava/lang/String;)V

    .line 1229
    const/16 v3, 0xc8

    invoke-virtual {v6, v3}, Lcom/baidu/cyberplayer/utils/I;->b(I)V

    .line 1230
    invoke-virtual {v6, v1, v2}, Lcom/baidu/cyberplayer/utils/I;->a(J)V

    .line 1231
    invoke-virtual {v6, v0}, Lcom/baidu/cyberplayer/utils/I;->a(Ljava/io/InputStream;)V

    .line 1233
    invoke-virtual {p1, v6}, Lcom/baidu/cyberplayer/utils/G;->a(Lcom/baidu/cyberplayer/utils/I;)Z

    .line 1236
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    :goto_1
    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 1240
    :goto_2
    invoke-virtual {v4, v5}, Lcom/baidu/cyberplayer/utils/bd;->a(I)V

    .line 1241
    return-void

    .line 1213
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->t()Z

    .line 1214
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/U;)Z
    .locals 3

    .line 854
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object v0

    .line 856
    const-string v1, "Browse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 857
    new-instance v0, Lcom/baidu/cyberplayer/utils/bi;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/bi;-><init>(Lcom/baidu/cyberplayer/utils/U;)V

    .line 858
    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/bi;)Z

    move-result p1

    return p1

    .line 861
    :cond_0
    const-string v1, "Search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 862
    new-instance v0, Lcom/baidu/cyberplayer/utils/bj;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/bj;-><init>(Lcom/baidu/cyberplayer/utils/U;)V

    .line 863
    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/be;->a(Lcom/baidu/cyberplayer/utils/bj;)Z

    move-result p1

    return p1

    .line 867
    :cond_1
    const-string v1, "GetSearchCapabilities"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 868
    const-string v0, "SearchCaps"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object p1

    .line 869
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/be;->c()Ljava/lang/String;

    move-result-object v0

    .line 870
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    .line 871
    return v2

    .line 875
    :cond_2
    const-string v1, "GetSortCapabilities"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 876
    const-string v0, "SortCaps"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object p1

    .line 877
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/be;->b()Ljava/lang/String;

    move-result-object v0

    .line 878
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    .line 879
    return v2

    .line 882
    :cond_3
    const-string v1, "GetSystemUpdateID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_4

    .line 883
    const-string v0, "Id"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object p1

    .line 884
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/X;->a(I)V

    .line 885
    return v2

    .line 888
    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/af;)Z
    .locals 0

    .line 1160
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/bf;)Z
    .locals 1

    .line 788
    invoke-virtual {p1, p0}, Lcom/baidu/cyberplayer/utils/bf;->a(Lcom/baidu/cyberplayer/utils/be;)V

    .line 789
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/bf;->a(I)V

    .line 790
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bf;->a()V

    .line 791
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bg;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bg;->add(Ljava/lang/Object;)Z

    .line 792
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bC;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bC;->a(Lcom/baidu/cyberplayer/utils/bl;)V

    .line 795
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->a()V

    .line 797
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/br;)Z
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bs;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bs;->add(Ljava/lang/Object;)Z

    .line 644
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/bu;)Z
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bv;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bv;->add(Ljava/lang/Object;)Z

    .line 732
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/by;)Z
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bz;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bz;->add(Ljava/lang/Object;)Z

    .line 684
    const/4 p1, 0x1

    return p1
.end method

.method public b()I
    .locals 1

    .line 600
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/be;->h()I

    move-result v0

    return v0
.end method

.method public b()J
    .locals 2

    .line 1298
    iget-wide v0, p0, Lcom/baidu/cyberplayer/utils/be;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 0

    .line 1293
    iput-wide p1, p0, Lcom/baidu/cyberplayer/utils/be;->b:J

    .line 1294
    return-void
.end method

.method public c()I
    .locals 1

    .line 605
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/be;->h()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bs;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bs;->size()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bz;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bz;->size()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bv;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bv;->size()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .line 1254
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->a()Lcom/baidu/cyberplayer/utils/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bh;->c()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 11

    .line 1303
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->a()Lcom/baidu/cyberplayer/utils/bh;

    move-result-object v0

    .line 1304
    const-string v1, "SystemUpdateID"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/bh;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/af;

    move-result-object v0

    .line 1306
    nop

    .line 1307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 1309
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->a()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1311
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1312
    :catch_0
    move-exception v4

    :goto_1
    nop

    .line 1315
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->a()I

    move-result v4

    .line 1316
    if-eq v3, v4, :cond_0

    .line 1317
    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/utils/af;->a(I)V

    .line 1318
    move v3, v4

    .line 1322
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1323
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/be;->b()J

    move-result-wide v6

    sub-long v8, v4, v1

    cmp-long v10, v6, v8

    if-gez v10, :cond_1

    .line 1324
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/be;->a()Lcom/baidu/cyberplayer/utils/bg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bg;->a()V

    .line 1325
    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/be;->a:Lcom/baidu/cyberplayer/utils/bC;

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bC;->a()V

    .line 1326
    move-wide v1, v4

    .line 1328
    :cond_1
    goto :goto_0

    .line 1329
    :cond_2
    return-void
.end method
