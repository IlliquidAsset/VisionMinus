.class public final enum Lcom/mob/mobapm/bean/ExceptionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mob/mobapm/bean/ExceptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mob/mobapm/bean/ExceptionType;

.field public static final enum CRASH:Lcom/mob/mobapm/bean/ExceptionType;

.field public static final enum STUCK:Lcom/mob/mobapm/bean/ExceptionType;


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/mob/mobapm/bean/ExceptionType;

    const-string v1, "CRASH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/mob/mobapm/bean/ExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mob/mobapm/bean/ExceptionType;->CRASH:Lcom/mob/mobapm/bean/ExceptionType;

    .line 2
    new-instance v0, Lcom/mob/mobapm/bean/ExceptionType;

    const-string v1, "STUCK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/mob/mobapm/bean/ExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mob/mobapm/bean/ExceptionType;->STUCK:Lcom/mob/mobapm/bean/ExceptionType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/mob/mobapm/bean/ExceptionType;

    .line 3
    sget-object v4, Lcom/mob/mobapm/bean/ExceptionType;->CRASH:Lcom/mob/mobapm/bean/ExceptionType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/mob/mobapm/bean/ExceptionType;->$VALUES:[Lcom/mob/mobapm/bean/ExceptionType;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/mob/mobapm/bean/ExceptionType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mob/mobapm/bean/ExceptionType;
    .locals 1

    .line 1
    const-class v0, Lcom/mob/mobapm/bean/ExceptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mob/mobapm/bean/ExceptionType;

    return-object p0
.end method

.method public static values()[Lcom/mob/mobapm/bean/ExceptionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/mobapm/bean/ExceptionType;->$VALUES:[Lcom/mob/mobapm/bean/ExceptionType;

    invoke-virtual {v0}, [Lcom/mob/mobapm/bean/ExceptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mob/mobapm/bean/ExceptionType;

    return-object v0
.end method

.method public static valuesOf(Ljava/lang/String;)Lcom/mob/mobapm/bean/ExceptionType;
    .locals 5

    .line 1
    invoke-static {}, Lcom/mob/mobapm/bean/ExceptionType;->values()[Lcom/mob/mobapm/bean/ExceptionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/mob/mobapm/bean/ExceptionType;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    sget-object p0, Lcom/mob/mobapm/bean/ExceptionType;->CRASH:Lcom/mob/mobapm/bean/ExceptionType;

    return-object p0
.end method
