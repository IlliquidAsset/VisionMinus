.class final Lcom/univocity/parsers/common/DummyFormat;
.super Lcom/univocity/parsers/common/Format;
.source "DummyFormat.java"


# static fields
.field static final instance:Lcom/univocity/parsers/common/DummyFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/univocity/parsers/common/DummyFormat;

    invoke-direct {v0}, Lcom/univocity/parsers/common/DummyFormat;-><init>()V

    sput-object v0, Lcom/univocity/parsers/common/DummyFormat;->instance:Lcom/univocity/parsers/common/DummyFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/univocity/parsers/common/Format;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getConfiguration()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method
