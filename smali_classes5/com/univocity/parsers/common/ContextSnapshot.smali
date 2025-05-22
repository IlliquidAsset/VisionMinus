.class public abstract Lcom/univocity/parsers/common/ContextSnapshot;
.super Lcom/univocity/parsers/common/ContextWrapper;
.source "ContextSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Lcom/univocity/parsers/common/ContextWrapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final currentColumn:I

.field private final currentRecord:J


# direct methods
.method public constructor <init>(Lcom/univocity/parsers/common/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lcom/univocity/parsers/common/ContextWrapper;-><init>(Lcom/univocity/parsers/common/Context;)V

    .line 36
    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->currentColumn()I

    move-result v0

    iput v0, p0, Lcom/univocity/parsers/common/ContextSnapshot;->currentColumn:I

    .line 37
    invoke-interface {p1}, Lcom/univocity/parsers/common/Context;->currentRecord()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/univocity/parsers/common/ContextSnapshot;->currentRecord:J

    return-void
.end method


# virtual methods
.method public currentColumn()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/univocity/parsers/common/ContextSnapshot;->currentColumn:I

    return v0
.end method

.method public currentRecord()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/univocity/parsers/common/ContextSnapshot;->currentRecord:J

    return-wide v0
.end method
