.class final Lcn/sharesdk/framework/utils/QRCodeUtil/h;
.super Ljava/lang/Object;
.source "GenericGFPoly.java"


# instance fields
.field private final a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

.field private final b:[I


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/utils/QRCodeUtil/g;[I)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    array-length v0, p2

    if-eqz v0, :cond_3

    .line 34
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    .line 35
    array-length p1, p2

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    const/4 v1, 0x0

    .line 36
    aget v2, p2, v1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 40
    aget v3, p2, v2

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne v2, p1, :cond_1

    new-array p1, v0, [I

    aput v1, p1, v1

    .line 44
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b:[I

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v2

    .line 46
    new-array p1, p1, [I

    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b:[I

    .line 47
    array-length v0, p1

    invoke-static {p2, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 50
    :cond_2
    iput-object p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b:[I

    :goto_1
    return-void

    .line 32
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method a(I)I
    .locals 2

    .line 76
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget p1, v0, v1

    return p1
.end method

.method a(II)Lcn/sharesdk/framework/utils/QRCodeUtil/h;
    .locals 4

    if-ltz p1, :cond_2

    if-nez p2, :cond_0

    .line 175
    iget-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->a()Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    move-result-object p1

    return-object p1

    .line 177
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b:[I

    array-length v0, v0

    add-int/2addr p1, v0

    .line 178
    new-array p1, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 180
    iget-object v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    iget-object v3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->c(II)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_1
    new-instance p2, Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    invoke-direct {p2, v0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;-><init>(Lcn/sharesdk/framework/utils/QRCodeUtil/g;[I)V

    return-object p2

    .line 172
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method a(Lcn/sharesdk/framework/utils/QRCodeUtil/h;)Lcn/sharesdk/framework/utils/QRCodeUtil/h;
    .locals 7

    .line 104
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    iget-object v1, p1, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 114
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b:[I

    .line 115
    iget-object p1, p1, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b:[I

    .line 116
    array-length v1, v0

    array-length v2, p1

    if-le v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    .line 121
    :goto_0
    array-length v1, v0

    new-array v1, v1, [I

    .line 122
    array-length v2, v0

    array-length v3, p1

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 125
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v2

    .line 127
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_3

    sub-int v4, v3, v2

    .line 128
    aget v4, p1, v4

    aget v5, v0, v3

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->b(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 131
    :cond_3
    new-instance p1, Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    invoke-direct {p1, v0, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;-><init>(Lcn/sharesdk/framework/utils/QRCodeUtil/g;[I)V

    return-object p1

    .line 105
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a()[I
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b:[I

    return-object v0
.end method

.method b()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method b(Lcn/sharesdk/framework/utils/QRCodeUtil/h;)Lcn/sharesdk/framework/utils/QRCodeUtil/h;
    .locals 12

    .line 135
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    iget-object v1, p1, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 141
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b:[I

    .line 142
    array-length v1, v0

    .line 143
    iget-object p1, p1, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b:[I

    .line 144
    array-length v2, p1

    add-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    .line 145
    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    .line 147
    aget v6, v0, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_1

    add-int v8, v5, v7

    .line 149
    aget v9, v3, v8

    iget-object v10, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    aget v11, p1, v7

    invoke-virtual {v10, v6, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->c(II)I

    move-result v10

    invoke-static {v9, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->b(II)I

    move-result v9

    aput v9, v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 152
    :cond_2
    new-instance p1, Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    invoke-direct {p1, v0, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;-><init>(Lcn/sharesdk/framework/utils/QRCodeUtil/g;[I)V

    return-object p1

    .line 139
    :cond_3
    :goto_2
    iget-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->a()Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    move-result-object p1

    return-object p1

    .line 136
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method c()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method c(Lcn/sharesdk/framework/utils/QRCodeUtil/h;)[Lcn/sharesdk/framework/utils/QRCodeUtil/h;
    .locals 7

    .line 186
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    iget-object v1, p1, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->a()Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a(I)I

    move-result v1

    .line 197
    iget-object v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->c(I)I

    move-result v1

    move-object v2, p0

    .line 199
    :goto_0
    invoke-virtual {v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b()I

    move-result v3

    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b()I

    move-result v4

    if-lt v3, v4, :cond_0

    invoke-virtual {v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    invoke-virtual {v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b()I

    move-result v3

    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b()I

    move-result v4

    sub-int/2addr v3, v4

    .line 201
    iget-object v4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    invoke-virtual {v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b()I

    move-result v5

    invoke-virtual {v2, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a(I)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->c(II)I

    move-result v4

    .line 202
    invoke-virtual {p1, v3, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a(II)Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    move-result-object v5

    .line 203
    iget-object v6, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    invoke-virtual {v6, v3, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->a(II)Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    move-result-object v3

    .line 204
    invoke-virtual {v0, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/h;)Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    move-result-object v0

    .line 205
    invoke-virtual {v2, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/h;)Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object v2, p1, v0

    return-object p1

    .line 190
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Divide by 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 214
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_8

    .line 215
    invoke-virtual {p0, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a(I)I

    move-result v2

    if-eqz v2, :cond_7

    if-gez v2, :cond_0

    const-string v3, " - "

    .line 218
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v2, v2

    goto :goto_1

    .line 221
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, " + "

    .line 222
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v2, v3, :cond_5

    .line 226
    :cond_2
    iget-object v4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    invoke-virtual {v4, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->b(I)I

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x31

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-ne v2, v3, :cond_4

    const/16 v2, 0x61

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v4, "a^"

    .line 232
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    if-eqz v1, :cond_7

    if-ne v1, v3, :cond_6

    const/16 v2, 0x78

    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const-string v2, "x^"

    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 246
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
