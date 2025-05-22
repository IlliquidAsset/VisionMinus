.class public Lcom/univocity/parsers/conversions/FloatConversion;
.super Lcom/univocity/parsers/conversions/ObjectConversion;
.source "FloatConversion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/conversions/ObjectConversion<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/univocity/parsers/conversions/ObjectConversion;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/conversions/ObjectConversion;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected fromString(Ljava/lang/String;)Ljava/lang/Float;
    .locals 0

    .line 46
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/FloatConversion;->fromString(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
