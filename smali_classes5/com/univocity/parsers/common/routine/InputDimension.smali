.class public final Lcom/univocity/parsers/common/routine/InputDimension;
.super Ljava/lang/Object;
.source "InputDimension.java"


# instance fields
.field columns:I

.field rows:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final columnCount()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/univocity/parsers/common/routine/InputDimension;->columns:I

    return v0
.end method

.method public final rowCount()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/univocity/parsers/common/routine/InputDimension;->rows:J

    return-wide v0
.end method
