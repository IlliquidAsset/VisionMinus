.class public Lcom/leon/channel/common/ApkSectionInfo;
.super Ljava/lang/Object;
.source "ApkSectionInfo.java"


# instance fields
.field public apkSize:J

.field public centralDir:Lcom/leon/channel/common/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/leon/channel/common/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public contentEntry:Lcom/leon/channel/common/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/leon/channel/common/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public eocd:Lcom/leon/channel/common/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/leon/channel/common/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public lowMemory:Z

.field public schemeV2Block:Lcom/leon/channel/common/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/leon/channel/common/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->lowMemory:Z

    return-void
.end method


# virtual methods
.method public checkEocdCentralDirOffset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/leon/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->eocd:Lcom/leon/channel/common/Pair;

    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/leon/channel/common/ApkSectionInfo;->eocd:Lcom/leon/channel/common/Pair;

    invoke-virtual {v1}, Lcom/leon/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/leon/channel/common/verify/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v0

    .line 70
    iget-object v2, p0, Lcom/leon/channel/common/ApkSectionInfo;->centralDir:Lcom/leon/channel/common/Pair;

    invoke-virtual {v2}, Lcom/leon/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 71
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CentralDirOffset mismatch , EocdCentralDirOffset : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", centralDirOffset : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->centralDir:Lcom/leon/channel/common/Pair;

    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public checkParamters()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/leon/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 37
    iget-boolean v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->lowMemory:Z

    const-string v1, "ApkSectionInfo paramters is not valid : "

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->contentEntry:Lcom/leon/channel/common/Pair;

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->schemeV2Block:Lcom/leon/channel/common/Pair;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->centralDir:Lcom/leon/channel/common/Pair;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->eocd:Lcom/leon/channel/common/Pair;

    if-eqz v0, :cond_4

    .line 41
    iget-boolean v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->lowMemory:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->contentEntry:Lcom/leon/channel/common/Pair;

    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->contentEntry:Lcom/leon/channel/common/Pair;

    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->contentEntry:Lcom/leon/channel/common/Pair;

    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->schemeV2Block:Lcom/leon/channel/common/Pair;

    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->schemeV2Block:Lcom/leon/channel/common/Pair;

    .line 42
    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->schemeV2Block:Lcom/leon/channel/common/Pair;

    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->centralDir:Lcom/leon/channel/common/Pair;

    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->centralDir:Lcom/leon/channel/common/Pair;

    .line 43
    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->centralDir:Lcom/leon/channel/common/Pair;

    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->eocd:Lcom/leon/channel/common/Pair;

    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->eocd:Lcom/leon/channel/common/Pair;

    .line 44
    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->eocd:Lcom/leon/channel/common/Pair;

    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/leon/channel/common/ApkSectionInfo;->apkSize:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 49
    invoke-virtual {p0}, Lcom/leon/channel/common/ApkSectionInfo;->checkEocdCentralDirOffset()V

    return-void

    .line 47
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leon/channel/common/ApkSectionInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leon/channel/common/ApkSectionInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rewind()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->contentEntry:Lcom/leon/channel/common/Pair;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->schemeV2Block:Lcom/leon/channel/common/Pair;

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->centralDir:Lcom/leon/channel/common/Pair;

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/leon/channel/common/ApkSectionInfo;->eocd:Lcom/leon/channel/common/Pair;

    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {v0}, Lcom/leon/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lowMemory : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/leon/channel/common/ApkSectionInfo;->lowMemory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n apkSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/leon/channel/common/ApkSectionInfo;->apkSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n contentEntry : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leon/channel/common/ApkSectionInfo;->contentEntry:Lcom/leon/channel/common/Pair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n schemeV2Block : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leon/channel/common/ApkSectionInfo;->schemeV2Block:Lcom/leon/channel/common/Pair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n centralDir : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leon/channel/common/ApkSectionInfo;->centralDir:Lcom/leon/channel/common/Pair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n eocd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leon/channel/common/ApkSectionInfo;->eocd:Lcom/leon/channel/common/Pair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
