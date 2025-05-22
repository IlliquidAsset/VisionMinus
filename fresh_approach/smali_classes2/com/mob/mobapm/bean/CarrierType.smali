.class public final enum Lcom/mob/mobapm/bean/CarrierType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mob/mobapm/bean/CarrierType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mob/mobapm/bean/CarrierType;

.field public static final enum DX1:Lcom/mob/mobapm/bean/CarrierType;

.field public static final enum DX2:Lcom/mob/mobapm/bean/CarrierType;

.field public static final enum DX3:Lcom/mob/mobapm/bean/CarrierType;

.field public static final enum LT1:Lcom/mob/mobapm/bean/CarrierType;

.field public static final enum LT2:Lcom/mob/mobapm/bean/CarrierType;

.field public static final enum LT3:Lcom/mob/mobapm/bean/CarrierType;

.field public static final enum UNKNOWN:Lcom/mob/mobapm/bean/CarrierType;

.field public static final enum YD1:Lcom/mob/mobapm/bean/CarrierType;

.field public static final enum YD2:Lcom/mob/mobapm/bean/CarrierType;

.field public static final enum YD3:Lcom/mob/mobapm/bean/CarrierType;

.field public static final enum YD4:Lcom/mob/mobapm/bean/CarrierType;


# instance fields
.field a:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/mob/mobapm/bean/CarrierType;

    const-string v1, "YD1"

    const/4 v2, 0x0

    const-string v3, "46000"

    const-string v4, "\u79fb\u52a8"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mob/mobapm/bean/CarrierType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mob/mobapm/bean/CarrierType;->YD1:Lcom/mob/mobapm/bean/CarrierType;

    .line 2
    new-instance v0, Lcom/mob/mobapm/bean/CarrierType;

    const-string v1, "YD2"

    const/4 v3, 0x1

    const-string v5, "46002"

    invoke-direct {v0, v1, v3, v5, v4}, Lcom/mob/mobapm/bean/CarrierType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mob/mobapm/bean/CarrierType;->YD2:Lcom/mob/mobapm/bean/CarrierType;

    .line 3
    new-instance v0, Lcom/mob/mobapm/bean/CarrierType;

    const-string v1, "YD3"

    const/4 v5, 0x2

    const-string v6, "46004"

    invoke-direct {v0, v1, v5, v6, v4}, Lcom/mob/mobapm/bean/CarrierType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mob/mobapm/bean/CarrierType;->YD3:Lcom/mob/mobapm/bean/CarrierType;

    .line 4
    new-instance v0, Lcom/mob/mobapm/bean/CarrierType;

    const-string v1, "YD4"

    const/4 v6, 0x3

    const-string v7, "46007"

    invoke-direct {v0, v1, v6, v7, v4}, Lcom/mob/mobapm/bean/CarrierType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mob/mobapm/bean/CarrierType;->YD4:Lcom/mob/mobapm/bean/CarrierType;

    .line 5
    new-instance v0, Lcom/mob/mobapm/bean/CarrierType;

    const-string v1, "LT1"

    const/4 v4, 0x4

    const-string v7, "46001"

    const-string v8, "\u8054\u901a"

    invoke-direct {v0, v1, v4, v7, v8}, Lcom/mob/mobapm/bean/CarrierType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mob/mobapm/bean/CarrierType;->LT1:Lcom/mob/mobapm/bean/CarrierType;

    .line 6
    new-instance v0, Lcom/mob/mobapm/bean/CarrierType;

    const-string v1, "LT2"

    const/4 v7, 0x5

    const-string v9, "46006"

    invoke-direct {v0, v1, v7, v9, v8}, Lcom/mob/mobapm/bean/CarrierType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mob/mobapm/bean/CarrierType;->LT2:Lcom/mob/mobapm/bean/CarrierType;

    .line 7
    new-instance v0, Lcom/mob/mobapm/bean/CarrierType;

    const-string v1, "LT3"

    const/4 v9, 0x6

    const-string v10, "46009"

    invoke-direct {v0, v1, v9, v10, v8}, Lcom/mob/mobapm/bean/CarrierType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mob/mobapm/bean/CarrierType;->LT3:Lcom/mob/mobapm/bean/CarrierType;

    .line 8
    new-instance v0, Lcom/mob/mobapm/bean/CarrierType;

    const-string v1, "DX1"

    const/4 v8, 0x7

    const-string v10, "46003"

    const-string v11, "\u7535\u4fe1"

    invoke-direct {v0, v1, v8, v10, v11}, Lcom/mob/mobapm/bean/CarrierType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mob/mobapm/bean/CarrierType;->DX1:Lcom/mob/mobapm/bean/CarrierType;

    .line 9
    new-instance v0, Lcom/mob/mobapm/bean/CarrierType;

    const-string v1, "DX2"

    const/16 v10, 0x8

    const-string v12, "46005"

    invoke-direct {v0, v1, v10, v12, v11}, Lcom/mob/mobapm/bean/CarrierType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mob/mobapm/bean/CarrierType;->DX2:Lcom/mob/mobapm/bean/CarrierType;

    .line 10
    new-instance v0, Lcom/mob/mobapm/bean/CarrierType;

    const-string v1, "DX3"

    const/16 v12, 0x9

    const-string v13, "460011"

    invoke-direct {v0, v1, v12, v13, v11}, Lcom/mob/mobapm/bean/CarrierType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mob/mobapm/bean/CarrierType;->DX3:Lcom/mob/mobapm/bean/CarrierType;

    .line 11
    new-instance v0, Lcom/mob/mobapm/bean/CarrierType;

    const-string v1, "UNKNOWN"

    const/16 v11, 0xa

    const-string v13, "0"

    const-string v14, "\u672a\u77e5"

    invoke-direct {v0, v1, v11, v13, v14}, Lcom/mob/mobapm/bean/CarrierType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mob/mobapm/bean/CarrierType;->UNKNOWN:Lcom/mob/mobapm/bean/CarrierType;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/mob/mobapm/bean/CarrierType;

    .line 12
    sget-object v13, Lcom/mob/mobapm/bean/CarrierType;->YD1:Lcom/mob/mobapm/bean/CarrierType;

    aput-object v13, v1, v2

    sget-object v2, Lcom/mob/mobapm/bean/CarrierType;->YD2:Lcom/mob/mobapm/bean/CarrierType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mob/mobapm/bean/CarrierType;->YD3:Lcom/mob/mobapm/bean/CarrierType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mob/mobapm/bean/CarrierType;->YD4:Lcom/mob/mobapm/bean/CarrierType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mob/mobapm/bean/CarrierType;->LT1:Lcom/mob/mobapm/bean/CarrierType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mob/mobapm/bean/CarrierType;->LT2:Lcom/mob/mobapm/bean/CarrierType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/mob/mobapm/bean/CarrierType;->LT3:Lcom/mob/mobapm/bean/CarrierType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/mob/mobapm/bean/CarrierType;->DX1:Lcom/mob/mobapm/bean/CarrierType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/mob/mobapm/bean/CarrierType;->DX2:Lcom/mob/mobapm/bean/CarrierType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/mob/mobapm/bean/CarrierType;->DX3:Lcom/mob/mobapm/bean/CarrierType;

    aput-object v2, v1, v12

    aput-object v0, v1, v11

    sput-object v1, Lcom/mob/mobapm/bean/CarrierType;->$VALUES:[Lcom/mob/mobapm/bean/CarrierType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/mob/mobapm/bean/CarrierType;->a:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/mob/mobapm/bean/CarrierType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mob/mobapm/bean/CarrierType;
    .locals 1

    .line 1
    const-class v0, Lcom/mob/mobapm/bean/CarrierType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mob/mobapm/bean/CarrierType;

    return-object p0
.end method

.method public static values()[Lcom/mob/mobapm/bean/CarrierType;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/mobapm/bean/CarrierType;->$VALUES:[Lcom/mob/mobapm/bean/CarrierType;

    invoke-virtual {v0}, [Lcom/mob/mobapm/bean/CarrierType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mob/mobapm/bean/CarrierType;

    return-object v0
.end method

.method public static valuesOf(Ljava/lang/String;)Lcom/mob/mobapm/bean/CarrierType;
    .locals 5

    .line 1
    invoke-static {}, Lcom/mob/mobapm/bean/CarrierType;->values()[Lcom/mob/mobapm/bean/CarrierType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/mob/mobapm/bean/CarrierType;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    sget-object p0, Lcom/mob/mobapm/bean/CarrierType;->UNKNOWN:Lcom/mob/mobapm/bean/CarrierType;

    return-object p0
.end method
