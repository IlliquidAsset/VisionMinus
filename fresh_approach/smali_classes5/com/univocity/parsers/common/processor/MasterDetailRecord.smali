.class public Lcom/univocity/parsers/common/processor/MasterDetailRecord;
.super Ljava/lang/Object;
.source "MasterDetailRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private detailRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private masterRow:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/MasterDetailRecord;->masterRow:[Ljava/lang/Object;

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/MasterDetailRecord;->detailRows:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 75
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/MasterDetailRecord;->detailRows:Ljava/util/List;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/univocity/parsers/common/processor/MasterDetailRecord;->masterRow:[Ljava/lang/Object;

    return-void
.end method

.method public clone()Lcom/univocity/parsers/common/processor/MasterDetailRecord;
    .locals 2

    .line 82
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/common/processor/MasterDetailRecord;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/univocity/parsers/common/processor/MasterDetailRecord;->clone()Lcom/univocity/parsers/common/processor/MasterDetailRecord;

    move-result-object v0

    return-object v0
.end method

.method public getDetailRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/MasterDetailRecord;->detailRows:Ljava/util/List;

    return-object v0
.end method

.method public getMasterRow()[Ljava/lang/Object;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/MasterDetailRecord;->masterRow:[Ljava/lang/Object;

    return-object v0
.end method

.method public setDetailRows(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/MasterDetailRecord;->detailRows:Ljava/util/List;

    return-void
.end method

.method public setMasterRow([Ljava/lang/Object;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/MasterDetailRecord;->masterRow:[Ljava/lang/Object;

    return-void
.end method
