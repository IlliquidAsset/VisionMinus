.class public final enum Lorg/apache/http/conn/util/DomainType;
.super Ljava/lang/Enum;
.source "DomainType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/http/conn/util/DomainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/conn/util/DomainType;

.field public static final enum ICANN:Lorg/apache/http/conn/util/DomainType;

.field public static final enum PRIVATE:Lorg/apache/http/conn/util/DomainType;

.field public static final enum UNKNOWN:Lorg/apache/http/conn/util/DomainType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    new-instance v0, Lorg/apache/http/conn/util/DomainType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/conn/util/DomainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/conn/util/DomainType;->UNKNOWN:Lorg/apache/http/conn/util/DomainType;

    new-instance v0, Lorg/apache/http/conn/util/DomainType;

    const-string v1, "ICANN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/http/conn/util/DomainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/conn/util/DomainType;->ICANN:Lorg/apache/http/conn/util/DomainType;

    new-instance v0, Lorg/apache/http/conn/util/DomainType;

    const-string v1, "PRIVATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/http/conn/util/DomainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/conn/util/DomainType;->PRIVATE:Lorg/apache/http/conn/util/DomainType;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/http/conn/util/DomainType;

    .line 34
    sget-object v5, Lorg/apache/http/conn/util/DomainType;->UNKNOWN:Lorg/apache/http/conn/util/DomainType;

    aput-object v5, v1, v2

    sget-object v2, Lorg/apache/http/conn/util/DomainType;->ICANN:Lorg/apache/http/conn/util/DomainType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/apache/http/conn/util/DomainType;->$VALUES:[Lorg/apache/http/conn/util/DomainType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/conn/util/DomainType;
    .locals 1

    .line 34
    const-class v0, Lorg/apache/http/conn/util/DomainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/http/conn/util/DomainType;

    return-object p0
.end method

.method public static values()[Lorg/apache/http/conn/util/DomainType;
    .locals 1

    .line 34
    sget-object v0, Lorg/apache/http/conn/util/DomainType;->$VALUES:[Lorg/apache/http/conn/util/DomainType;

    invoke-virtual {v0}, [Lorg/apache/http/conn/util/DomainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/conn/util/DomainType;

    return-object v0
.end method
