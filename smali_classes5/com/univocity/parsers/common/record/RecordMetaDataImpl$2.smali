.class final Lcom/univocity/parsers/common/record/RecordMetaDataImpl$2;
.super Ljava/lang/Object;
.source "RecordMetaDataImpl.java"

# interfaces
.implements Lcom/univocity/parsers/annotations/Format;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/common/record/RecordMetaDataImpl;->newFormatAnnotation(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/annotation/Annotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$format:Ljava/lang/String;

.field final synthetic val$formatOptions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl$2;->val$format:Ljava/lang/String;

    iput-object p2, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl$2;->val$formatOptions:[Ljava/lang/String;

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

    .line 435
    const-class v0, Lcom/univocity/parsers/annotations/Format;

    return-object v0
.end method

.method public formats()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 425
    iget-object v1, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl$2;->val$format:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public options()[Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/univocity/parsers/common/record/RecordMetaDataImpl$2;->val$formatOptions:[Ljava/lang/String;

    return-object v0
.end method
