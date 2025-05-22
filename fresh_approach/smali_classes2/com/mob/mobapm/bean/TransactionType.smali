.class public final enum Lcom/mob/mobapm/bean/TransactionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mob/mobapm/bean/TransactionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mob/mobapm/bean/TransactionType;

.field public static final enum http:Lcom/mob/mobapm/bean/TransactionType;

.field public static final enum https:Lcom/mob/mobapm/bean/TransactionType;

.field public static final enum socket:Lcom/mob/mobapm/bean/TransactionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/mob/mobapm/bean/TransactionType;

    const-string v1, "http"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mob/mobapm/bean/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mob/mobapm/bean/TransactionType;->http:Lcom/mob/mobapm/bean/TransactionType;

    .line 2
    new-instance v0, Lcom/mob/mobapm/bean/TransactionType;

    const-string v1, "https"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mob/mobapm/bean/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mob/mobapm/bean/TransactionType;->https:Lcom/mob/mobapm/bean/TransactionType;

    .line 3
    new-instance v0, Lcom/mob/mobapm/bean/TransactionType;

    const-string v1, "socket"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mob/mobapm/bean/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mob/mobapm/bean/TransactionType;->socket:Lcom/mob/mobapm/bean/TransactionType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mob/mobapm/bean/TransactionType;

    .line 4
    sget-object v5, Lcom/mob/mobapm/bean/TransactionType;->http:Lcom/mob/mobapm/bean/TransactionType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/mob/mobapm/bean/TransactionType;->https:Lcom/mob/mobapm/bean/TransactionType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/mob/mobapm/bean/TransactionType;->$VALUES:[Lcom/mob/mobapm/bean/TransactionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mob/mobapm/bean/TransactionType;
    .locals 1

    .line 1
    const-class v0, Lcom/mob/mobapm/bean/TransactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mob/mobapm/bean/TransactionType;

    return-object p0
.end method

.method public static values()[Lcom/mob/mobapm/bean/TransactionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/mobapm/bean/TransactionType;->$VALUES:[Lcom/mob/mobapm/bean/TransactionType;

    invoke-virtual {v0}, [Lcom/mob/mobapm/bean/TransactionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mob/mobapm/bean/TransactionType;

    return-object v0
.end method
