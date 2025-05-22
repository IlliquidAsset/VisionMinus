.class public Lcom/univocity/parsers/common/input/NoopCharAppender;
.super Ljava/lang/Object;
.source "NoopCharAppender.java"

# interfaces
.implements Lcom/univocity/parsers/common/input/CharAppender;


# static fields
.field private static final instance:Lcom/univocity/parsers/common/input/NoopCharAppender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/univocity/parsers/common/input/NoopCharAppender;

    invoke-direct {v0}, Lcom/univocity/parsers/common/input/NoopCharAppender;-><init>()V

    sput-object v0, Lcom/univocity/parsers/common/input/NoopCharAppender;->instance:Lcom/univocity/parsers/common/input/NoopCharAppender;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/univocity/parsers/common/input/CharAppender;
    .locals 1

    .line 37
    sget-object v0, Lcom/univocity/parsers/common/input/NoopCharAppender;->instance:Lcom/univocity/parsers/common/input/NoopCharAppender;

    return-object v0
.end method


# virtual methods
.method public append(C)V
    .locals 0

    return-void
.end method

.method public append(I)V
    .locals 0

    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public append(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public append([C)V
    .locals 0

    return-void
.end method

.method public append([CII)V
    .locals 0

    return-void
.end method

.method public append([I)V
    .locals 0

    return-void
.end method

.method public appendIgnoringPadding(CC)V
    .locals 0

    return-void
.end method

.method public appendIgnoringWhitespace(C)V
    .locals 0

    return-void
.end method

.method public appendIgnoringWhitespaceAndPadding(CC)V
    .locals 0

    return-void
.end method

.method public appendUntil(CLcom/univocity/parsers/common/input/CharInput;C)C
    .locals 0

    :goto_0
    if-eq p1, p3, :cond_0

    .line 164
    invoke-interface {p2}, Lcom/univocity/parsers/common/input/CharInput;->nextChar()C

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final appendUntil(CLcom/univocity/parsers/common/input/CharInput;CC)C
    .locals 0

    :goto_0
    if-eq p1, p3, :cond_0

    if-eq p1, p4, :cond_0

    .line 170
    invoke-interface {p2}, Lcom/univocity/parsers/common/input/CharInput;->nextChar()C

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final appendUntil(CLcom/univocity/parsers/common/input/CharInput;CCC)C
    .locals 0

    :goto_0
    if-eq p1, p3, :cond_0

    if-eq p1, p4, :cond_0

    if-eq p1, p5, :cond_0

    .line 176
    invoke-interface {p2}, Lcom/univocity/parsers/common/input/CharInput;->nextChar()C

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public charAt(I)C
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public fill(CI)V
    .locals 0

    return-void
.end method

.method public getAndReset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChars()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharsAndReset()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public length()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public prepend(C)V
    .locals 0

    return-void
.end method

.method public prepend(CC)V
    .locals 0

    return-void
.end method

.method public prepend([C)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public resetWhitespaceCount()V
    .locals 0

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public updateWhitespace()V
    .locals 0

    return-void
.end method

.method public whitespaceCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
