.class Lcom/univocity/parsers/common/fields/FieldConversionMapping$1;
.super Lcom/univocity/parsers/common/fields/AbstractConversionMapping;
.source "FieldConversionMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/univocity/parsers/common/fields/FieldConversionMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/fields/AbstractConversionMapping<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/univocity/parsers/common/fields/FieldConversionMapping;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/fields/FieldConversionMapping;Ljava/util/List;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/univocity/parsers/common/fields/FieldConversionMapping$1;->this$0:Lcom/univocity/parsers/common/fields/FieldConversionMapping;

    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/fields/AbstractConversionMapping;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected newFieldSelector()Lcom/univocity/parsers/common/fields/FieldSelector;
    .locals 1

    .line 44
    new-instance v0, Lcom/univocity/parsers/common/fields/FieldNameSelector;

    invoke-direct {v0}, Lcom/univocity/parsers/common/fields/FieldNameSelector;-><init>()V

    return-object v0
.end method
