.class public abstract Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailListProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;
.source "AbstractMasterDetailListProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private headers:[Ljava/lang/String;

.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/processor/MasterDetailRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/processor/RowPlacement;Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;-><init>(Lcom/univocity/parsers/common/processor/RowPlacement;Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;)V

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailListProcessor;->records:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;-><init>(Lcom/univocity/parsers/common/processor/core/AbstractObjectListProcessor;)V

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailListProcessor;->records:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getHeaders()[Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailListProcessor;->headers:[Ljava/lang/String;

    return-object v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/univocity/parsers/common/processor/MasterDetailRecord;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailListProcessor;->records:Ljava/util/List;

    return-object v0
.end method

.method protected masterDetailRecordProcessed(Lcom/univocity/parsers/common/processor/MasterDetailRecord;Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/MasterDetailRecord;",
            "TT;)V"
        }
    .end annotation

    .line 93
    iget-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailListProcessor;->records:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public processEnded(Lcom/univocity/parsers/common/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 98
    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailListProcessor;->headers:[Ljava/lang/String;

    .line 99
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/processor/core/AbstractMasterDetailProcessor;->processEnded(Lcom/univocity/parsers/common/Context;)V

    return-void
.end method
