.class public abstract Lcn/sharesdk/framework/utils/h;
.super Ljava/lang/Object;
.source "UnicodeEscaper.java"

# interfaces
.implements Lcn/sharesdk/framework/utils/Escaper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/utils/h$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a([CII)[C
    .locals 1

    .line 483
    new-array p2, p2, [C

    if-lez p1, :cond_0

    const/4 v0, 0x0

    .line 485
    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p2
.end method

.method protected static final b(Ljava/lang/CharSequence;II)I
    .locals 4

    if-ge p1, p2, :cond_5

    .line 453
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 p1, p1, 0x1

    const v1, 0xd800

    if-lt v0, v1, :cond_4

    const v1, 0xdfff

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0xdbff

    const-string v2, " at index "

    const-string v3, "\' with value "

    if-gt v0, v1, :cond_3

    if-ne p1, p2, :cond_1

    neg-int p0, v0

    return p0

    .line 465
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    .line 466
    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 467
    invoke-static {v0, p0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    .line 469
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected low surrogate but got char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 471
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected low surrogate character \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return v0

    .line 474
    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index exceeds specified range"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected a(Ljava/lang/CharSequence;II)I
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_2

    .line 124
    invoke-static {p1, p2, p3}, Lcn/sharesdk/framework/utils/h;->b(Ljava/lang/CharSequence;II)I

    move-result v0

    if-ltz v0, :cond_2

    .line 125
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/utils/h;->a(I)[C

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 128
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    :goto_2
    return p2
.end method

.method protected final a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 191
    new-instance v1, Lcn/sharesdk/framework/utils/h$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/sharesdk/framework/utils/h$a;-><init>(Lcn/sharesdk/framework/utils/h$1;)V

    invoke-virtual {v1}, Lcn/sharesdk/framework/utils/h$a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge p2, v0, :cond_5

    .line 196
    invoke-static {p1, p2, v0}, Lcn/sharesdk/framework/utils/h;->b(Ljava/lang/CharSequence;II)I

    move-result v5

    if-ltz v5, :cond_4

    .line 200
    invoke-virtual {p0, v5}, Lcn/sharesdk/framework/utils/h;->a(I)[C

    move-result-object v6

    if-eqz v6, :cond_2

    sub-int v7, p2, v3

    add-int v8, v4, v7

    .line 207
    array-length v9, v6

    add-int/2addr v9, v8

    .line 208
    array-length v10, v1

    if-ge v10, v9, :cond_0

    sub-int v10, v0, p2

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x20

    .line 210
    invoke-static {v1, v4, v9}, Lcn/sharesdk/framework/utils/h;->a([CII)[C

    move-result-object v1

    :cond_0
    if-lez v7, :cond_1

    .line 214
    invoke-virtual {p1, v3, p2, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    move v4, v8

    .line 217
    :cond_1
    array-length v3, v6

    if-lez v3, :cond_2

    .line 218
    array-length v3, v6

    invoke-static {v6, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    array-length v3, v6

    add-int/2addr v4, v3

    .line 222
    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :goto_1
    add-int/2addr v3, p2

    .line 223
    invoke-virtual {p0, p1, v3, v0}, Lcn/sharesdk/framework/utils/h;->a(Ljava/lang/CharSequence;II)I

    move-result p2

    goto :goto_0

    .line 198
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Trailing high surrogate at end of input"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    sub-int p2, v0, v3

    if-lez p2, :cond_7

    add-int/2addr p2, v4

    .line 232
    array-length v5, v1

    if-ge v5, p2, :cond_6

    .line 233
    invoke-static {v1, v4, p2}, Lcn/sharesdk/framework/utils/h;->a([CII)[C

    move-result-object v1

    .line 235
    :cond_6
    invoke-virtual {p1, v3, v0, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    move v4, p2

    .line 238
    :cond_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method

.method protected abstract a(I)[C
.end method

.method public escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1

    .line 286
    invoke-static {p1}, Lcn/sharesdk/framework/utils/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v0, Lcn/sharesdk/framework/utils/h$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/framework/utils/h$1;-><init>(Lcn/sharesdk/framework/utils/h;Ljava/lang/Appendable;)V

    return-object v0
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0, p1, v1, v0}, Lcn/sharesdk/framework/utils/h;->a(Ljava/lang/CharSequence;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcn/sharesdk/framework/utils/h;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
