.class public final enum Lorg/apache/commons/codec/language/bm/RuleType;
.super Ljava/lang/Enum;
.source "RuleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/codec/language/bm/RuleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/codec/language/bm/RuleType;

.field public static final enum APPROX:Lorg/apache/commons/codec/language/bm/RuleType;

.field public static final enum EXACT:Lorg/apache/commons/codec/language/bm/RuleType;

.field public static final enum RULES:Lorg/apache/commons/codec/language/bm/RuleType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 29
    new-instance v0, Lorg/apache/commons/codec/language/bm/RuleType;

    const-string v1, "APPROX"

    const/4 v2, 0x0

    const-string v3, "approx"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/codec/language/bm/RuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/language/bm/RuleType;->APPROX:Lorg/apache/commons/codec/language/bm/RuleType;

    .line 31
    new-instance v0, Lorg/apache/commons/codec/language/bm/RuleType;

    const-string v1, "EXACT"

    const/4 v3, 0x1

    const-string v4, "exact"

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/commons/codec/language/bm/RuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/language/bm/RuleType;->EXACT:Lorg/apache/commons/codec/language/bm/RuleType;

    .line 33
    new-instance v0, Lorg/apache/commons/codec/language/bm/RuleType;

    const-string v1, "RULES"

    const/4 v4, 0x2

    const-string v5, "rules"

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/commons/codec/language/bm/RuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/language/bm/RuleType;->RULES:Lorg/apache/commons/codec/language/bm/RuleType;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/commons/codec/language/bm/RuleType;

    .line 26
    sget-object v5, Lorg/apache/commons/codec/language/bm/RuleType;->APPROX:Lorg/apache/commons/codec/language/bm/RuleType;

    aput-object v5, v1, v2

    sget-object v2, Lorg/apache/commons/codec/language/bm/RuleType;->EXACT:Lorg/apache/commons/codec/language/bm/RuleType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/apache/commons/codec/language/bm/RuleType;->$VALUES:[Lorg/apache/commons/codec/language/bm/RuleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lorg/apache/commons/codec/language/bm/RuleType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/RuleType;
    .locals 1

    .line 26
    const-class v0, Lorg/apache/commons/codec/language/bm/RuleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/codec/language/bm/RuleType;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/codec/language/bm/RuleType;
    .locals 1

    .line 26
    sget-object v0, Lorg/apache/commons/codec/language/bm/RuleType;->$VALUES:[Lorg/apache/commons/codec/language/bm/RuleType;

    invoke-virtual {v0}, [Lorg/apache/commons/codec/language/bm/RuleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/codec/language/bm/RuleType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/RuleType;->name:Ljava/lang/String;

    return-object v0
.end method
