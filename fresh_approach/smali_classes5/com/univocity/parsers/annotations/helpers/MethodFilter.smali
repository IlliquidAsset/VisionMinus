.class public final enum Lcom/univocity/parsers/annotations/helpers/MethodFilter;
.super Ljava/lang/Enum;
.source "MethodFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/univocity/parsers/annotations/helpers/MethodFilter$Filter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/univocity/parsers/annotations/helpers/MethodFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/univocity/parsers/annotations/helpers/MethodFilter;

.field public static final enum ONLY_GETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

.field public static final enum ONLY_SETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;


# instance fields
.field private filter:Lcom/univocity/parsers/annotations/helpers/MethodFilter$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    new-instance v1, Lcom/univocity/parsers/annotations/helpers/MethodFilter$1;

    invoke-direct {v1}, Lcom/univocity/parsers/annotations/helpers/MethodFilter$1;-><init>()V

    const-string v2, "ONLY_GETTERS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/univocity/parsers/annotations/helpers/MethodFilter;-><init>(Ljava/lang/String;ILcom/univocity/parsers/annotations/helpers/MethodFilter$Filter;)V

    sput-object v0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_GETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    .line 40
    new-instance v0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    new-instance v1, Lcom/univocity/parsers/annotations/helpers/MethodFilter$2;

    invoke-direct {v1}, Lcom/univocity/parsers/annotations/helpers/MethodFilter$2;-><init>()V

    const-string v2, "ONLY_SETTERS"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/univocity/parsers/annotations/helpers/MethodFilter;-><init>(Ljava/lang/String;ILcom/univocity/parsers/annotations/helpers/MethodFilter$Filter;)V

    sput-object v0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_SETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    .line 27
    sget-object v2, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_GETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->$VALUES:[Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/univocity/parsers/annotations/helpers/MethodFilter$Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/annotations/helpers/MethodFilter$Filter;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->filter:Lcom/univocity/parsers/annotations/helpers/MethodFilter$Filter;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/univocity/parsers/annotations/helpers/MethodFilter;
    .locals 1

    .line 27
    const-class v0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    return-object p0
.end method

.method public static values()[Lcom/univocity/parsers/annotations/helpers/MethodFilter;
    .locals 1

    .line 27
    sget-object v0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->$VALUES:[Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    invoke-virtual {v0}, [Lcom/univocity/parsers/annotations/helpers/MethodFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    return-object v0
.end method


# virtual methods
.method public reject(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->filter:Lcom/univocity/parsers/annotations/helpers/MethodFilter$Filter;

    invoke-interface {v0, p1}, Lcom/univocity/parsers/annotations/helpers/MethodFilter$Filter;->reject(Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method
