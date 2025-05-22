.class public abstract Lcom/univocity/parsers/conversions/NullConversion;
.super Ljava/lang/Object;
.source "NullConversion.java"

# interfaces
.implements Lcom/univocity/parsers/conversions/Conversion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/conversions/Conversion<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field private valueOnNullInput:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private valueOnNullOutput:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0, v0}, Lcom/univocity/parsers/conversions/NullConversion;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;TI;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/univocity/parsers/conversions/NullConversion;->valueOnNullInput:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lcom/univocity/parsers/conversions/NullConversion;->valueOnNullOutput:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/univocity/parsers/conversions/NullConversion;->valueOnNullInput:Ljava/lang/Object;

    return-object p1

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/NullConversion;->fromInput(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract fromInput(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation
.end method

.method public getValueOnNullInput()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/univocity/parsers/conversions/NullConversion;->valueOnNullInput:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueOnNullOutput()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/univocity/parsers/conversions/NullConversion;->valueOnNullOutput:Ljava/lang/Object;

    return-object v0
.end method

.method public revert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)TI;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/univocity/parsers/conversions/NullConversion;->valueOnNullOutput:Ljava/lang/Object;

    return-object p1

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/NullConversion;->undo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setValueOnNullInput(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/univocity/parsers/conversions/NullConversion;->valueOnNullInput:Ljava/lang/Object;

    return-void
.end method

.method public setValueOnNullOutput(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/univocity/parsers/conversions/NullConversion;->valueOnNullOutput:Ljava/lang/Object;

    return-void
.end method

.method protected abstract undo(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)TI;"
        }
    .end annotation
.end method
