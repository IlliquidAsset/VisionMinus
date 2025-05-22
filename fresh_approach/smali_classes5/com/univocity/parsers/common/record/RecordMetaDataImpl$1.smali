.class final Lcom/univocity/parsers/common/record/RecordMetaDataImpl$1;
.super Ljava/lang/Object;
.source "RecordMetaDataImpl.java"

# interfaces
.implements Lcom/univocity/parsers/annotations/BooleanString;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->buildBooleanStringAnnotation([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/annotation/Annotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$falseStrings:[Ljava/lang/String;

.field final synthetic val$trueStrings:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl$1;->val$trueStrings:[Ljava/lang/String;

    iput-object p2, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl$1;->val$falseStrings:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 416
    const-class v0, Lcom/univocity/parsers/annotations/BooleanString;

    return-object v0
.end method

.method public falseStrings()[Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl$1;->val$falseStrings:[Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/univocity/parsers/common/ArgumentUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public trueStrings()[Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl$1;->val$trueStrings:[Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/univocity/parsers/common/ArgumentUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    :cond_0
    return-object v0
.end method
