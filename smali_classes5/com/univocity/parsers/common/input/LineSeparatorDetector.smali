.class abstract Lcom/univocity/parsers/common/input/LineSeparatorDetector;
.super Ljava/lang/Object;
.source "LineSeparatorDetector.java"

# interfaces
.implements Lcom/univocity/parsers/common/input/InputAnalysisProcess;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract apply(CC)V
.end method

.method public execute([CI)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xd

    const/16 v4, 0xa

    if-ge v1, p2, :cond_3

    .line 31
    aget-char v5, p1, v1

    if-eq v5, v4, :cond_1

    if-ne v5, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_1
    :goto_1
    if-nez v2, :cond_4

    move v2, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v5, 0x0

    :cond_4
    if-eqz v2, :cond_7

    if-ne v2, v4, :cond_5

    const/16 v2, 0xa

    goto :goto_3

    :cond_5
    if-ne v5, v4, :cond_6

    const/16 v0, 0xa

    :cond_6
    const/16 v2, 0xd

    goto :goto_3

    :cond_7
    move v0, v5

    .line 61
    :goto_3
    invoke-virtual {p0, v2, v0}, Lcom/univocity/parsers/common/input/LineSeparatorDetector;->apply(CC)V

    return-void
.end method
