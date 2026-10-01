.class public Lcom/shenma/tvlauncher/wifi/IPUtil;
.super Ljava/lang/Object;
.source "IPUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changeToInt(Ljava/lang/String;)[I
    .locals 5
    .param p0, "ip"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 107
    return-object v0

    .line 108
    :cond_0
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "str":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 110
    return-object v0

    .line 112
    :cond_1
    :try_start_0
    new-array v2, v3, [I

    .line 113
    .local v2, "intIP":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 114
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v3    # "i":I
    :cond_2
    return-object v2

    .line 117
    .end local v2    # "intIP":[I
    :catch_0
    move-exception v2

    .line 119
    return-object v0
.end method

.method public static check(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "mask"    # Ljava/lang/String;
    .param p2, "gateway"    # Ljava/lang/String;

    .line 77
    invoke-static {p0}, Lcom/shenma/tvlauncher/wifi/IPUtil;->checkIP(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/shenma/tvlauncher/wifi/IPUtil;->checkMask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/shenma/tvlauncher/wifi/IPUtil;->checkIP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/shenma/tvlauncher/wifi/IPUtil;->toInt(Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "intIp":I
    invoke-static {p1}, Lcom/shenma/tvlauncher/wifi/IPUtil;->toInt(Ljava/lang/String;)I

    move-result v2

    .line 81
    .local v2, "intMask":I
    invoke-static {p2}, Lcom/shenma/tvlauncher/wifi/IPUtil;->toInt(Ljava/lang/String;)I

    move-result v3

    .line 82
    .local v3, "intGateway":I
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    and-int v4, v0, v2

    .line 85
    .local v4, "a":I
    and-int v5, v3, v2

    .line 86
    .local v5, "b":I
    if-eq v4, v5, :cond_2

    .line 87
    return v1

    .line 88
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 83
    .end local v4    # "a":I
    .end local v5    # "b":I
    :cond_3
    :goto_0
    return v1

    .line 78
    .end local v0    # "intIp":I
    .end local v2    # "intMask":I
    .end local v3    # "intGateway":I
    :cond_4
    :goto_1
    return v1
.end method

.method public static checkHost255(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "mask"    # Ljava/lang/String;

    .line 150
    invoke-static {p0}, Lcom/shenma/tvlauncher/wifi/IPUtil;->checkIP(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/shenma/tvlauncher/wifi/IPUtil;->checkMask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    invoke-static {p0}, Lcom/shenma/tvlauncher/wifi/IPUtil;->toInt(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "intIp":I
    invoke-static {p1}, Lcom/shenma/tvlauncher/wifi/IPUtil;->toInt(Ljava/lang/String;)I

    move-result v2

    .line 154
    .local v2, "intMask":I
    if-eqz v0, :cond_3

    if-nez v2, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    or-int v3, v0, v2

    .line 157
    .local v3, "a":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 158
    return v1

    .line 159
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 155
    .end local v3    # "a":I
    :cond_3
    :goto_0
    return v1

    .line 151
    .end local v0    # "intIp":I
    .end local v2    # "intMask":I
    :cond_4
    :goto_1
    return v1
.end method

.method public static checkIP(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ip"    # Ljava/lang/String;

    .line 31
    invoke-static {p0}, Lcom/shenma/tvlauncher/wifi/IPUtil;->isIPNum(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 32
    return v1

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/shenma/tvlauncher/wifi/IPUtil;->changeToInt(Ljava/lang/String;)[I

    move-result-object v0

    .line 34
    .local v0, "intIP":[I
    if-nez v0, :cond_1

    .line 35
    return v1

    .line 36
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 37
    aget v3, v0, v2

    if-ltz v3, :cond_3

    aget v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_2

    goto :goto_1

    .line 36
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_3
    :goto_1
    return v1

    .line 40
    .end local v2    # "i":I
    :cond_4
    aget v2, v0, v1

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    aget v2, v0, v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 42
    :cond_5
    aget v2, v0, v1

    const/16 v3, 0xdf

    if-le v2, v3, :cond_6

    .line 43
    return v1

    .line 44
    :cond_6
    const/4 v1, 0x1

    return v1

    .line 41
    :cond_7
    :goto_2
    return v1
.end method

.method public static checkMask(Ljava/lang/String;)Z
    .locals 4
    .param p0, "mask"    # Ljava/lang/String;

    .line 15
    invoke-static {p0}, Lcom/shenma/tvlauncher/wifi/IPUtil;->isIPNum(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 16
    return v1

    .line 17
    :cond_0
    invoke-static {p0}, Lcom/shenma/tvlauncher/wifi/IPUtil;->toInt(Ljava/lang/String;)I

    move-result v0

    .line 18
    .local v0, "m":I
    xor-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 19
    .end local v0    # "m":I
    .local v2, "m":I
    add-int/lit8 v0, v2, -0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 20
    return v1

    .line 21
    :cond_1
    return v3
.end method

.method public static getNetmaskLength(Ljava/lang/String;)I
    .locals 5
    .param p0, "maskStr"    # Ljava/lang/String;

    .line 132
    invoke-static {p0}, Lcom/shenma/tvlauncher/wifi/IPUtil;->toInt(Ljava/lang/String;)I

    move-result v0

    .line 133
    .local v0, "mask":I
    const/4 v1, 0x0

    .line 134
    .local v1, "prefixLength":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 135
    shr-int v3, v0, v2

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 136
    add-int/lit8 v1, v1, 0x1

    .line 134
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public static intToIp(I)Ljava/lang/String;
    .locals 3
    .param p0, "ipInt"    # I

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    return-object v0
.end method

.method public static isIP(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ip"    # Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lcom/shenma/tvlauncher/wifi/IPUtil;->isIPNum(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 55
    return v1

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/shenma/tvlauncher/wifi/IPUtil;->changeToInt(Ljava/lang/String;)[I

    move-result-object v0

    .line 57
    .local v0, "intIP":[I
    if-nez v0, :cond_1

    .line 58
    return v1

    .line 59
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 60
    aget v3, v0, v2

    if-ltz v3, :cond_3

    aget v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_2

    goto :goto_1

    .line 59
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_3
    :goto_1
    return v1

    .line 63
    .end local v2    # "i":I
    :cond_4
    aget v2, v0, v1

    if-nez v2, :cond_5

    .line 64
    return v1

    .line 65
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method private static isIPNum(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 93
    return v0

    .line 95
    :cond_0
    const-string v1, "0123456789."

    .line 97
    .local v1, "ipComp":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 98
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 99
    return v0

    .line 97
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;

    .line 6
    return-void
.end method

.method private static toInt(Ljava/lang/String;)I
    .locals 3
    .param p0, "ip"    # Ljava/lang/String;

    .line 123
    invoke-static {p0}, Lcom/shenma/tvlauncher/wifi/IPUtil;->changeToInt(Ljava/lang/String;)[I

    move-result-object v0

    .line 124
    .local v0, "intIP":[I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    aget v1, v0, v1

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget v2, v0, v2

    or-int/2addr v1, v2

    .line 126
    .local v1, "num":I
    return v1

    .line 128
    .end local v1    # "num":I
    :cond_0
    return v1
.end method
