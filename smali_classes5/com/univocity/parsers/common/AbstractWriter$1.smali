.class Lcom/univocity/parsers/common/AbstractWriter$1;
.super Lcom/univocity/parsers/common/CommonSettings;
.source "AbstractWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/univocity/parsers/common/AbstractWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/CommonSettings<",
        "Lcom/univocity/parsers/common/DummyFormat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/univocity/parsers/common/AbstractWriter;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/AbstractWriter;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/univocity/parsers/common/AbstractWriter$1;->this$0:Lcom/univocity/parsers/common/AbstractWriter;

    invoke-direct {p0}, Lcom/univocity/parsers/common/CommonSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDefaultFormat()Lcom/univocity/parsers/common/DummyFormat;
    .locals 1

    .line 88
    sget-object v0, Lcom/univocity/parsers/common/DummyFormat;->instance:Lcom/univocity/parsers/common/DummyFormat;

    return-object v0
.end method

.method protected bridge synthetic createDefaultFormat()Lcom/univocity/parsers/common/Format;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/univocity/parsers/common/AbstractWriter$1;->createDefaultFormat()Lcom/univocity/parsers/common/DummyFormat;

    move-result-object v0

    return-object v0
.end method
