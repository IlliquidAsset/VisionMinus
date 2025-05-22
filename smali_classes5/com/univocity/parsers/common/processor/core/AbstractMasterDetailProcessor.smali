.class public abstract Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;
.source "AbstractMasterDetailProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final detailProcessor:Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;

.field private final isMasterRowAboveDetail:Z

.field private record:Lcom/univocity/parsers/common/processor/MasterDetailRecord;


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/processor/RowPlacement;Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;)V
    .locals 4

    .line 66
    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "Row processor for reading detail rows"

    .line 67
    invoke-static {v3, v1}, Lcom/univocity/parsers/common/ArgumentUtils;->noNulls(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iput-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->detailProcessor:Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;

    .line 69
    sget-object p2, Lcom/univocity/parsers/common/processor/RowPlacement;->TOP:Lcom/univocity/parsers/common/processor/RowPlacement;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->isMasterRowAboveDetail:Z

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;)V
    .locals 1

    .line 78
    sget-object v0, Lcom/univocity/parsers/common/processor/RowPlacement;->TOP:Lcom/univocity/parsers/common/processor/RowPlacement;

    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;-><init>(Lcom/univocity/parsers/common/processor/RowPlacement;Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;)V

    return-void
.end method

.method private processRecord([Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->detailProcessor:Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;->getRows()Ljava/util/List;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->record:Lcom/univocity/parsers/common/processor/MasterDetailRecord;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/univocity/parsers/common/processor/MasterDetailRecord;->setDetailRows(Ljava/util/List;)V

    .line 138
    iget-boolean v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->isMasterRowAboveDetail:Z

    if-nez v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->record:Lcom/univocity/parsers/common/processor/MasterDetailRecord;

    invoke-virtual {v1, p1}, Lcom/univocity/parsers/common/processor/MasterDetailRecord;->setMasterRow([Ljava/lang/Object;)V

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->record:Lcom/univocity/parsers/common/processor/MasterDetailRecord;

    invoke-virtual {v1}, Lcom/univocity/parsers/common/processor/MasterDetailRecord;->getMasterRow()[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->record:Lcom/univocity/parsers/common/processor/MasterDetailRecord;

    invoke-virtual {v1}, Lcom/univocity/parsers/common/processor/MasterDetailRecord;->clone()Lcom/univocity/parsers/common/processor/MasterDetailRecord;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->masterDetailRecordProcessed(Lcom/univocity/parsers/common/processor/MasterDetailRecord;Lcom/univocity/parsers/common/Context;)V

    .line 144
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->record:Lcom/univocity/parsers/common/processor/MasterDetailRecord;

    invoke-virtual {p2}, Lcom/univocity/parsers/common/processor/MasterDetailRecord;->clear()V

    .line 147
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    iget-boolean p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->isMasterRowAboveDetail:Z

    if-eqz p2, :cond_2

    .line 150
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->record:Lcom/univocity/parsers/common/processor/MasterDetailRecord;

    invoke-virtual {p2, p1}, Lcom/univocity/parsers/common/processor/MasterDetailRecord;->setMasterRow([Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected abstract isMasterRecord([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation
.end method

.method protected abstract masterDetailRecordProcessed(Lcom/univocity/parsers/common/processor/MasterDetailRecord;Lcom/univocity/parsers/common/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/MasterDetailRecord;",
            "TT;)V"
        }
    .end annotation
.end method

.method public processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 156
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    .line 157
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->detailProcessor:Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    .line 159
    iget-boolean v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->isMasterRowAboveDetail:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, v0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->processRecord([Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V

    :cond_0
    return-void
.end method

.method public processStarted(Lcom/univocity/parsers/common/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->detailProcessor:Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;

    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;->processStarted(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public final rowProcessed([Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->record:Lcom/univocity/parsers/common/processor/MasterDetailRecord;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/univocity/parsers/common/processor/MasterDetailRecord;

    invoke-direct {v0}, Lcom/univocity/parsers/common/processor/MasterDetailRecord;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->record:Lcom/univocity/parsers/common/processor/MasterDetailRecord;

    .line 119
    invoke-virtual {v0, p1}, Lcom/univocity/parsers/common/processor/MasterDetailRecord;->setMasterRow([Ljava/lang/Object;)V

    .line 121
    iget-boolean v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->isMasterRowAboveDetail:Z

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->processRecord([Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method

.method public final rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->isMasterRecord([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-super {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractObjectProcessor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->isMasterRowAboveDetail:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->record:Lcom/univocity/parsers/common/processor/MasterDetailRecord;

    if-nez v0, :cond_1

    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->detailProcessor:Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V

    :goto_0
    return-void
.end method
