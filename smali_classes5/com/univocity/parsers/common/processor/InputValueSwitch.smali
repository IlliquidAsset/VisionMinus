.class public Lcom/univocity/parsers/common/processor/InputValueSwitch;
.super Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;
.source "InputValueSwitch.java"

# interfaces
.implements Lcom/univocity/parsers/common/processor/RowProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch<",
        "Lcom/univocity/parsers/common/ParsingContext;",
        ">;",
        "Lcom/univocity/parsers/common/processor/RowProcessor;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lcom/univocity/parsers/common/processor/InputValueSwitch;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic processEnded(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic processStarted(Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->processStarted(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public bridge synthetic rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method
