.class public Lcom/univocity/parsers/fixed/FixedWidthFieldLengths;
.super Lcom/univocity/parsers/fixed/FixedWidthFields;
.source "FixedWidthFieldLengths.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;-><init>(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;-><init>([I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/fixed/FixedWidthFields;-><init>([Ljava/lang/String;[I)V

    return-void
.end method
